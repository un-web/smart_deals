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
    $isAuthenticated: () => Promise<boolean>;
    $refreshToken: () => Promise<any>;
  }
}

declare module "vue" {
  interface ComponentCustomProperties {
    $directus: Directus;
    $isAuthenticated: () => Promise<boolean>;
    $refreshToken: () => Promise<any>;
  }
}

export default defineNuxtPlugin(async ({ provide, vueApp }) => {
  const directus = useDirectus() as Directus;

  class NuxtCookieStorage {
    cookie = useCookie('directus-data')
    get() {
      return this.cookie.value
    }
    set(data: any) {
      this.cookie.value = data
    }
  }

  const storage = new NuxtCookieStorage() as AuthenticationStorage


  const isAuthenticated = async () => {
    try {
      const authCookie = useCookie("access_token");
      if (authCookie.value) {
        directus.setToken(authCookie.value);
      }
      const me = await directus.request(
        readMe(),
      );
      return me
    } catch (error) {
      console.error(error);
      return false;
    }
  };
  const refreshToken = async () => {
    return directus.request(
      refresh({ mode: 'cookie' })
    );
  };
  const getSchema = async () => {
    const result = await directus.request(schemaSnapshot());
    return result
  }
  provide("directus", directus);
  provide('isAuthenticated', isAuthenticated);
  provide('refreshToken', refreshToken);
});
