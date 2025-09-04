import { readRole, readRoles } from "@directus/sdk";

export async function getRoleByName(roleName: string) {
  try {
    const { $directus } = useNuxtApp();
    // First, get all roles to find the one with matching name
    const allRoles = await $directus.request(readRoles());
    const targetRole = allRoles.find(role => role.name === roleName);
    if (targetRole) {
      // Now fetch the complete role details using its ID
      const roleDetails = await $directus.request(readRole(targetRole.id));
      return roleDetails;
    }
    return null;
  } catch (error) {
    console.error('Error fetching role:', error);
    throw error;
  }
}