export const useDealWorkflow = () => {
  // const { $directus } = useNuxtApp();
  const store = useStore()
  // Автоматическая проверка статусов при загрузке сделки
  const checkDealStatus = async (dealId: string) => {
    const {data:deal} = await store.Deals.queryFirst(dealId);
    if (!deal.value) return

    if (deal.value.status === 'pending_start' &&
      deal.value.executor_confirmed &&
      deal.value.customer_confirmed) {
      // Автозапуск если оба подтвердили
      await store.Deals.update(
        {
          id: dealId,
          status: 'active',
          started_at: new Date().toISOString()
        })

    }
  };

  // Создание сделки с начальными значениями
  // const createDealWithWorkflow = async (dealData: any) => {
  //   return await $directus.request(
  //     items('deals').createOne({
  //       ...dealData,
  //       status: 'draft',
  //       executor_confirmed: false,
  //       customer_confirmed: false,
  //       invitation_accepted: false
  //     })
  //   );
  // };

  return { checkDealStatus };
};