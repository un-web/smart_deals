import { readMe } from "@directus/sdk";
import { useAuth } from "../composables/useAuth";

export default defineNuxtRouteMiddleware(async (to, _from) => {

  console.log('auth middleware');
  // const { isAuthenticated, user, isLoading } = useAuth();
  const authCookie = useCookie('directus_auth');
  console.log('authCookie', authCookie.value);
  // Skip authentication for public routes
  if (to.meta.public) {
    return true;
  }

  // Check if user is authenticated
  if (!authCookie.value) {
    return navigateTo('/login', { replace: true });
  }

  // Optional: Check for specific permissions
  // if (to.meta.requiresPermission) {
  //   const hasPermission = await checkPermission(
  //     currentUser.value,
  //     to.meta.requiresPermission
  //   );
  //   if (!hasPermission) {
  //     return navigateTo('/403', { replace: true });
  //   }
  // }

  return true;

});
