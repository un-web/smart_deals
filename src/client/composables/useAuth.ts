import { createDirectus, readFiles,authentication, rest, withToken, readMe, logout, type DirectusUser, readUser, readRoles, readRole, type DirectusRole, readUsers } from '@directus/sdk';
import { indexBy } from 'remeda';
import { ref, computed } from 'vue';

interface LoginCredentials {
  email: string
  password: string
}

interface AuthState {
  currentUser: DirectusUser | null
  isAuthenticated: boolean
  isLoading: boolean
  role: string | null
}

// Initialize Directus client
const BACKEND_URL = useRuntimeConfig().public.directusUrl;
const client = useNuxtApp().$directus;

const state = useState<AuthState>('auth', () => ({
  currentUser: null,
  isAuthenticated: false,
  isLoading: true,
  role: null
}));

export function useAuth() {
  // Cookie management
  const authCookie = useCookie('directus_auth', {
    maxAge: 60 * 60 * 24 * 7, // 7 days
    sameSite: 'lax',
    secure: process.env.NODE_ENV === 'production',
  });

  // Token refresh timer
  let tokenRefreshTimer: NodeJS.Timeout | null = null;

  // // Token management
  // const getStoredTokens = computed(() => {
  //   try {
  //     console.log('getStoredTokens',authCookie.value)
  //     return authCookie.value ? JSON.parse(authCookie.value) : null;
  //   } catch {
  //     return null;
  //   }
  // });

  const setTokens = async (tokens: any) => {
    if (!tokens) {
      // Clear auth on logout
      authCookie.value = null;
      state.value.isAuthenticated = false;
      state.value.currentUser = null;
      state.value.role = null;
      state.value.isLoading = false;
      await client.setToken(null);
      
      // Clear any existing refresh timer
      if (tokenRefreshTimer) {
        clearTimeout(tokenRefreshTimer);
        tokenRefreshTimer = null;
      }
      return;
    }

    // Set auth cookie
    authCookie.value = JSON.stringify(tokens);
    await client.setToken(tokens.access_token);

    try {
      // Fetch user data
      const user = await client.request(readMe());
      const userDetails = await client.request(readUser(user.id)) as DirectusUser;
      const role = await client.request(readRole(userDetails.role as string)) as DirectusRole;
      
      // Update state
      state.value.currentUser = userDetails;
      state.value.role = role.name;
      state.value.isAuthenticated = true;

      // Schedule token refresh 5 minutes before expiration
      scheduleTokenRefresh(tokens);
    } catch (error) {
      console.error('Failed to fetch user data:', error);
      // If token is invalid, clear auth
      await setTokens(null);
      throw error;
    } finally {
      state.value.isLoading = false;
    }
  };

  // Schedule token refresh 5 minutes before expiration
  const scheduleTokenRefresh = (tokens: any) => {
    // Clear any existing timer
    if (tokenRefreshTimer) {
      clearTimeout(tokenRefreshTimer);
      tokenRefreshTimer = null;
    }

    if (!tokens?.expires_at) return;

    // Parse expiration time (assuming it's a timestamp in milliseconds)
    const expiresAt = new Date(tokens.expires_at).getTime();
    const now = Date.now();
    const timeUntilExpiration = expiresAt - now;

    // If token is already expired or will expire in less than 5 minutes, refresh immediately
    if (timeUntilExpiration <= 5 * 60 * 1000) {
      refreshToken();
      return;
    }

    // Schedule refresh 5 minutes before expiration
    const refreshTime = timeUntilExpiration - (1 * 60 * 1000);
    
    tokenRefreshTimer = setTimeout(async () => {
      try {
        await refreshToken();
      } catch (error) {
        console.error('Scheduled token refresh failed:', error);
        // If refresh fails, try to refresh immediately (might be network issue)
        setTimeout(() => refreshToken(), 30000); // Retry after 30 seconds
      }
    }, refreshTime);

    console.log(`Token refresh scheduled in ${Math.round(refreshTime / 1000 / 60)} minutes`);
  };

  // Authentication methods
  async function login(credentials: LoginCredentials) {
    state.value.isLoading = true;

    try {
      const result = await client.login(credentials);
      await setTokens(result);
      return result;
    } catch (error) {
      console.error('Login failed:', error);
      throw error;
    } finally {
      state.value.isLoading = false;
    }
  }

  async function logout() {
    const tokens = authCookie.value ? authCookie.value:null;
    
    try {
      if (tokens?.refresh_token) {
        await client.logout({ refresh_token: tokens.refresh_token, mode: 'json' });
      }
    } catch (error) {
      console.error('Logout API call failed:', error);
    } finally {
      await setTokens(null);
    }
  }

  // Auto-refresh logic
  async function refreshToken() {
    const tokens = authCookie.value ? authCookie.value:null;
    if (!tokens?.refresh_token) return;

    try {
      const result = await client.refresh({ mode: 'json', refresh_token: tokens.refresh_token });
      await setTokens(result);
      return result;
    } catch (error) {
      console.error('Token refresh failed:', error);
      await setTokens(null);
      throw error;
    }
  }

  // User data fetching
  async function fetchCurrentUser() {
    const tokens = authCookie.value ? authCookie.value:null;
    console.log('fetchCurrentUser', tokens)
    if (!tokens) return null;

    try {
      await client.setToken(tokens.access_token);
      const user = await client.request(readMe());
      const userDetails = await client.request(readUser(user.id)) as DirectusUser;
      const role = await client.request(readRole(userDetails.role as string)) as DirectusRole;
      
      state.value.currentUser = userDetails;
      state.value.role = role.name;
      state.value.isAuthenticated = true;
      
      return userDetails;
    } catch (error) {
      console.error('Failed to fetch current user:', error);
      await setTokens(null);
      throw error;
    }
  }

  // Initialize auth state on app load
  const initializeAuth = async () => {
    const tokens = authCookie.value ? authCookie.value:null;
    console.log('initializeAuth',tokens);
    if (tokens) {
      try {
        await client.setToken(tokens.access_token);
        await fetchCurrentUser();
        
        // Schedule token refresh after initialization
        scheduleTokenRefresh(tokens);
      } catch (error) {
        console.error('Auth initialization failed:', error);
        await setTokens(null);
      }
    } else {
      state.value.isLoading = false;
    }
  };

  // Auto-initialize when useAuth is called
  if (process.client) {
    initializeAuth();
  }

  // Cleanup timer on unmount (if used in component)
  const cleanup = () => {
    if (tokenRefreshTimer) {
      clearTimeout(tokenRefreshTimer);
      tokenRefreshTimer = null;
    }
  };
  async function getRoleByName(roleName: string) {
    try {
      // First, get all roles to find the one with matching name
      const allRoles = await client.request(readRoles());
      const targetRole = allRoles.find(role => role.name === roleName);
      if (targetRole) {
        // Now fetch the complete role details using its ID
        const roleDetails = await client.request(readRole(targetRole.id));
        return roleDetails as DirectusRole;
      }
      return null;
    } catch (error) {
      console.error('Error fetching role:', error);
      throw error;
    }
  }
  async function getUsers(query?: any) {
    const users = await client.request(readUsers(query));
    return users
  }
  async function getUser(id:string) {
    console.log('getUser',id)
    if(!id) return null
    const users = await client.request(readUser(id));
    return users
  }
  async function getRoles(query?: any) {
    const roles = await client.request(readRoles());
    return indexBy(roles, (r)=>r.name)

  }
  async function getFiles(query?: any) {
    return await client.request(readFiles(query));

  }
  // Return auth state and methods
  return {
    user: computed(() => state.value.currentUser),
    isAuthenticated: computed(() => state.value.isAuthenticated),
    isLoading: computed(() => state.value.isLoading),
    role: computed(() => state.value.role),
    login,
    logout,
    refreshToken,
    fetchCurrentUser,
    initializeAuth,
    cleanup,
    getRoleByName,
    getUsers,
    getRoles,
    getUser,
    getFiles,
  };
}