import { createDirectus, authentication, rest, withToken, readMe, type DirectusUser, readUser } from '@directus/sdk';
import { set } from 'remeda';
import { ref, computed } from 'vue';
interface LoginCredentials {
  email: string
  password: string
}
interface AuthState {
  currentUser: DirectusUser | null
  isAuthenticated: boolean
  isLoading: boolean
}
// Initialize Directus client
const BACKEND_URL = useRuntimeConfig().public.directusUrl;
const client = createDirectus(BACKEND_URL)
  .with(authentication('cookie'))
  .with(rest());
const state = useState<AuthState>('auth', () => ({
  currentUser: null,
  isAuthenticated: false,
  isLoading: true
}))

export function useAuth() {
  // State management


  const authCookie = useCookie('directus_auth');

  // Token management
  const getStoredTokens = computed(() => {
    const stored = authCookie.value
    // const stored = localStorage.getItem('directus_auth');
    return stored ? JSON.parse(stored) : null;
  });

  const setTokens = async (tokens: any) => {
    console.log('setTokens',tokens);
    if (!tokens) {
      authCookie.value = null
      // localStorage.removeItem('directus_auth');
      state.value.isAuthenticated = false;
      state.value.currentUser = null;
      state.value.isLoading = false;
      return;
    }
    authCookie.value = JSON.stringify(tokens)
    console.log('authCookie', authCookie.value);
    // localStorage.setItem('directus_auth', JSON.stringify(tokens));
    await client.setToken(tokens.access_token);
    const user = await client.request(readMe())
    state.value.currentUser = await client.request(readUser(user.id)) as DirectusUser
    state.value.isAuthenticated = true;
    state.value.isLoading = false;
  };

  // Authentication methods
  async function login(credentials: LoginCredentials) {
    state.value.isLoading = true;
    const { $setDirectusToken } = useNuxtApp();

    try {
      const result = await client.login(credentials);
      console.log('Login result:', result);
      await setTokens(result);
      console.log(authCookie.value)
      await $setDirectusToken(result.access_token)
      return result;
    } catch (error) {
      console.error('Login failed:', error);
      throw error;
    } finally {
      state.value.isLoading = false;
    }
  }

  async function logout() {
    const tokens = getStoredTokens.value;
    if (tokens?.refresh_token) {
      await client.logout({ refresh_token: tokens.refresh_token });
    }
    setTokens(null);
  }

  // Auto-refresh logic
  async function refreshToken() {
    const tokens = getStoredTokens.value;
    if (!tokens?.refresh_token) return;

    try {
      const result = await client.refresh({ mode: 'json', refresh_token: tokens.refresh_token });
      setTokens(result);
      return result;
    } catch (error) {
      console.error('Token refresh failed:', error);
      throw error;
    }
  }

  // User data fetching
  async function fetchCurrentUser() {
    const tokens = getStoredTokens.value;
    if (!tokens?.access_token) return null;

    try {
      const response = await client.request(withToken(tokens.access_token, readMe()));
      state.value.currentUser = response.data;
      return response.data;
    } catch (error) {
      console.error('Failed to fetch current user:', error);
      throw error;
    }
  }

  // Return auth state and methods
  return {
    user: computed(() => state.value.currentUser),
    isAuthenticated: computed(() => state.value.isAuthenticated),
    isLoading: computed(() => state.value.isLoading),

    // isAuthenticated,
    // currentUser,
    // isLoading,
    login,
    logout,
    refreshToken,
    fetchCurrentUser,
  };
}