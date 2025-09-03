

import {
  authentication,
  createDirectus,
  createItem,
  createUser,
  deleteItem,
  readItem,

  readItems,
  readMe,
  readRoles,
  readUser,
  readUsers,
  realtime,
  registerUser,
  rest,
  updateItem,
  updateUser,

} from "@directus/sdk";

export default defineEventHandler(async (evt) => {

  const { email, password, role } = await readBody<{
    email: string;
    password: string;
    role: string;
  }>(evt);
  if (!email || !password) {
    return sendError(evt, new Error("FUUUCK!"));
  }

  const runtimeConfig = useRuntimeConfig(evt);
  const directus = createDirectus(runtimeConfig.directusUrl).with(authentication()).with(rest());
  directus.setToken(runtimeConfig.directusAdminToken)

  const existingUsers = await directus.request(
    readUsers({
      filter: {
        email: {
          _eq: email
        }
      },
      fields: ['id', 'email'],
      limit: 1
    })
  );
  if (existingUsers.length > 0) {
    throw createError({
      statusCode: 400,
      message: 'Email already registered'
    });
  }

  await directus.request(registerUser(
    email,
    password,
    { first_name: email.split('@')[0] },

  ))
  try {
    await updateUserRoleByEmail(directus, email, role)
  } catch (error) {
    throw createError({
      statusCode: 400,
      message: 'Error updating user role'
    });
  }

  return
});

async function updateUserRoleByEmail(directus: any, userEmail: string, roleName: string) {
  try {
     // Your Directus instance

    // 1. First, find the role by name to get its ID
    const roles = await directus.request(
      readRoles()
    )

    const role = roles.find((r) => {
      return r.name === roleName
    });
    if (!role) {
      throw new Error(`Role "${roleName}" not found`);
    }
    // 2. Find the user by email
    const users = await directus.request(
      readUsers({
        filter: { email: { _eq: userEmail } },
        fields: ['id', 'email', 'role'],
        limit: 1
      })
    );

    if (users.length === 0) {
      throw new Error(`User with email "${userEmail}" not found`);
    }

    const user = users[0];

    // 3. Update the user's role
    const updatedUser = await directus.request(
      updateUser(user.id, {
        role: role.id
      })
    );

    return {
      success: true,
      message: `Updated role for ${userEmail} to ${roleName}`,
      user: updatedUser
    };

  } catch (error) {
    console.error('Error updating user role:', error);
    throw error;
  }
}