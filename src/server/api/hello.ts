import {
  DirectusUser,
  authentication,
  createDirectus,
  createItem,
  deleteItem,
  readItem,
  readItems,
  readMe,
  readUser,
  realtime,
  rest,
  updateItem,
} from "@directus/sdk";

export default defineEventHandler(async (evt) => {
  const { email, password } = await readBody<{
    email: string;
    password: string;
  }>(evt);
  if (!email || !password) {
    return sendError(evt, new Error("FUUUCK!"));
  }
  const runtimeConfig = useRuntimeConfig(evt);
  const directus = createDirectus(runtimeConfig.directusUrl).with(authentication()).with(rest());

  // const { access_token: accessToken } = await createDirectus(
  //   runtimeConfig.directusUrl
  // )
  //   .with(authentication())
  //   .login({email, password});

  const { access_token: accessToken} = await directus
    .login({ email, password });

  if (!accessToken) {
    return sendError(evt, new Error("FUUUUUUUUUUUUKKKKK!!"));
  }
  directus.setToken(accessToken);
  // directus.setToken(accessToken);
  setCookie(evt, "access_token", accessToken);
  const me = await directus.request(readMe());
  const user = await directus.request(readUser(me.id)) as DirectusUser;
  console.log(user);
  // await setUserSession(evt, {
  //   loggedIn: true,
  //   user: {
  //     accessToken
  //   }
  // })
  return { access_token: accessToken, user };
});
