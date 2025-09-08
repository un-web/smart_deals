import {
  useAuth
} from "../composables/useAuth";

export default defineNuxtRouteMiddleware(async (to, _from) => {
  console.log('auth middleware');
  const {
    user,
    fetchCurrentUser,
    role
  } = useAuth();



  const publicRoutes = ['/login', '/signup'];
  if (publicRoutes.some(route => to.path.startsWith(route))) {
    return;
  }
  const authCookie = useCookie('directus_auth');
  console.log('check cookie', authCookie.value);
  // Check if user is authenticated
  if (!authCookie.value) {
    return navigateTo('/login', {
      replace: true
    });
  }
  try {
    console.log(user.value)
    if (user.value === null) {
      await fetchCurrentUser();
      console.log('after fetch', user.value)
    }
    if (user.value === null || role.value === null) {
      console.log('navigate to login');

      return navigateTo('/login', {
        replace: true
      });
    }
    
    const roleRoutes = {agent:'/agent',customer:'/customer',contracter:'/contracter'};
    const userBaseRoute = roleRoutes[role.value.toLowerCase() as keyof typeof roleRoutes];
    const isOnCorrectRoute = to.path.startsWith(userBaseRoute);
    console.log();
    
    if (!isOnCorrectRoute && to.path !== '/' && to.path !== '/notifications') {
    console.log('если путь не той роли, то возвращаем на главную');
    return navigateTo(`${userBaseRoute}${to.path}`);
     
    }

    // else (isOnCorrectRoute) {
    //   console.log('если путь той роли, редиректим дальше',`${userBaseRoute}/${to.path}`);

    //   return navigateTo(userBaseRoute);
    // }

  } catch (error) {
    console.error('Auth middleware error:', error);
    return navigateTo('/login');
  }

  return true;

});
