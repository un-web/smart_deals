import { createDirectus, authentication, rest } from "@directus/sdk";

export default defineNuxtPlugin(() => {
  const config = useRuntimeConfig();
  const directus = createDirectus(config.public.directusUrl)
    .with(authentication('cookie', { credentials: 'include' }))
    .with(rest());
  const cookies = useCookie('directus_auth');
  if (cookies.value) {
    directus.setToken(cookies.value);
  }
  return {
    provide: {
      directus,
    },
  };
});