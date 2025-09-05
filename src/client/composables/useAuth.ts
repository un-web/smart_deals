// composables/useAuth.ts
import { createDirectus, rest, authentication, readMe, type DirectusUser, readUser } from '@directus/sdk'
import type { AuthenticationData, AuthenticationStorage } from '@directus/sdk'
import { useRuntimeConfig, useCookie, useState, navigateTo } from '#imports'

interface AuthState {
  user: DirectusUser | null
  token: string | null
  isAuthenticated: boolean
  isLoading: boolean
}

interface LoginCredentials {
  email: string
  password: string
}

interface RegisterData {
  email: string
  password: string  
}

export const useAuth = () => {
   // State management
  const state = useState<AuthState>('auth', () => ({
    user: null,
    token: null,
    isAuthenticated: false,
    isLoading: true
  }))

  // Token management with cookie
  

  // Login function
  const login = async (credentials: LoginCredentials) => {
    try {
      state.value.isLoading = true
      
      const details= await $fetch('/api/hello', {
        method: 'POST',
        body: credentials
      })
      
      
      state.value.user = details.user
      state.value.token = details.access_token
      state.value.isAuthenticated = true
      
      return { success: true, user:details.user }
    } catch (error: any) {
      console.error('Login failed:', error)
      return { 
        success: false, 
        error: error.message || 'Login failed' 
      }
    } finally {
      state.value.isLoading = false
    }
  }

  // Register function
  const register = async (userData: RegisterData) => {
    try {
      state.value.isLoading = true
      
      // First, create the user (you might need to adjust this based on your Directus permissions)
      const response = await $fetch(`${directusUrl}/users`, {
        method: 'POST',
        body: {
          ...userData,
          role: null // or assign a default role if needed
        }
      })

      // Auto-login after registration
      if (response) {
        const loginResult = await login({
          email: userData.email,
          password: userData.password
        })
        
        return loginResult
      }
      
      return { success: false, error: 'Registration failed' }
    } catch (error: any) {
      console.error('Registration failed:', error)
      return { 
        success: false, 
        error: error.message || 'Registration failed' 
      }
    } finally {
      state.value.isLoading = false
    }
  }

  // Logout function
  const logout = async () => {
    useCookie('access_token').value = null
    state.value.user = null
    state.value.token = null
    state.value.isAuthenticated = false
  }


  return {
    // State
    user: computed(() => state.value.user),
    token: computed(() => state.value.token),
    isAuthenticated: computed(() => state.value.isAuthenticated),
    isLoading: computed(() => state.value.isLoading),

    // Methods
    login,
    register,
    logout,
   
  }
}