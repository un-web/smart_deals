import { readMe } from "@directus/sdk";

export default defineNuxtRouteMiddleware(async (to, _from) => {
  const { $directus } = useNuxtApp();
 
  if (to.path.startsWith("/login") || to.path.startsWith("/register")) {
    return;
  }
  const authCookie = useCookie("access_token");
  if (authCookie.value) {
    $directus.setToken(authCookie.value);
  }
  const isAuthenticated = async () => {
    try {

      const me = await $directus.request(
        readMe(),
      );
      return me
    } catch (error) {
      authCookie.value = null
      
      console.error(error);
      return false;
    }
  };
  const authenticated = await isAuthenticated();

  if (!authenticated || !authCookie.value) {

    return navigateTo("/login");
  }
  return

});