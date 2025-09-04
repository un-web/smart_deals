import { directus_users } from "#build/$rstore-directus-models";
import { authentication, createDirectus, readUser, rest } from "@directus/sdk";

export default defineEventHandler(async (evt) => {

  const { id } = await readBody<{
    id: string;
  }>(evt);
  if (!id) {
    send(evt, 400, 'id is required')
    return
  }

  const runtimeConfig = useRuntimeConfig(evt);
  const directus = createDirectus(runtimeConfig.directusUrl).with(authentication()).with(rest());
  directus.setToken(runtimeConfig.directusAdminToken)

  const user = await directus.request(
    readUser(id)
  ) ;
  if (!user) {
    send(evt, 400, 'User not found')
    return
  }

  return user as directus_users
});