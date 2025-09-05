import Schema from "#build/$rstore-directus-models";
import {
  authentication,
  createDirectus,
  createItem,
  deleteItem,
  readItem,
  readItems,
  readUsers,
  readMe,
  realtime,
  refresh,
  rest,
  updateItem,
  type AuthenticationClient,
  type AuthenticationStorage,
  type DirectusClient,
  schemaSnapshot,
  type RestClient,
} from "@directus/sdk";

type Directus = DirectusClient<unknown> & AuthenticationClient<unknown> & RestClient<unknown>;

declare module "#app" {
  interface NuxtApp {
    $directus: Directus;
    $setDirectusToken: (token: string | null) => Promise<boolean>;
    $refreshToken: () => Promise<any>;
  }
}

declare module "vue" {
  interface ComponentCustomProperties {
    $directus: Directus;
    $setDirectusToken: (token: string | null) => Promise<boolean>;
    $refreshToken: () => Promise<any>;
  }
}

export default defineNuxtPlugin(async ({ provide, vueApp }) => {

  // const getToken = () => localStorage.getItem('directus_auth');
  const cookie = useCookie('directus_auth');
  console.log('cookie', cookie.value);

  const setDirectusToken = async (token: string) => {
    const directus = useDirectus() as Directus;
    try {
      if (token) {
        await directus.setToken(token);
      }
      // const me = await directus.request(readMe());
      // provide("directus", directus);
      // return me;
    } catch (error) {
      console.error(error);
      return false;
    }
  };
  if(cookie.value) setDirectusToken(cookie.value.access_token);
  // const refreshToken = async () => {
  //   return directus.request(refresh({ mode: 'cookie' }));
  // };

  // const getSchema = async () => {
  //   const result = await directus.request(schemaSnapshot());
  //   return result;
  // };
  // if (cookies.value) await setDirectusToken();

  // provide("directus", directus);
  provide('setDirectusToken', setDirectusToken);
  // provide('refreshToken', refreshToken);
});