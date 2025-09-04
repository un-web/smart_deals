import { readMe, readRole } from "@directus/sdk";

export default defineNuxtRouteMiddleware(async (to) => {
  const { $directus } = useNuxtApp();
  const store = useStore()
  const dealId = to.params.id;
  const  user  = await $directus.request(readMe())

  if (!user) return navigateTo('/auth/login');

  const userRole = await $directus.request(readRole(user.role as string))

  // Проверяем доступ пользователя к сделке

  const {data:deal} = await store.Deals.queryFirst(dealId as string)
  if (!deal.value) return navigateTo('/deals');

  const hasAccess = deal.value.executor_id === user.id ||
    deal.value.customer_id === user.id ||
    (userRole.name === 'moderator');

  if (!hasAccess) {
    return navigateTo('/deals');
  }
});