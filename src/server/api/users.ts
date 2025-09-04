import { directus_users } from "#build/$rstore-directus-models";
import { authentication, createDirectus, readUser, readUsers, rest } from "@directus/sdk";

export default defineEventHandler(async (evt) => {

  const { role } = await readBody<{
    role: string;
  }>(evt);

  const runtimeConfig = useRuntimeConfig(evt);
  const directus = createDirectus(runtimeConfig.directusUrl).with(authentication()).with(rest());
  directus.setToken(runtimeConfig.directusAdminToken)

  if (!role) {
    return await directus.request(readUsers()) as directus_users[]
  }

  return await directus.request(readUsers({filter: { role: { _eq: role } }})) as directus_users[]
});

