import { readItems } from "@directus/sdk";

export const useDeals = () => {
  const store = useStore()

  const createDraft = async (dealData: any) => {
    return await store.Deals.create({
      ...dealData
    })

  };

  const inviteCustomer = async (dealId: string, email: string) => {
    // Генерация токена и отправка приглашения
  };

  const confirmDealStart = async (dealId: string, userId: string, userRole: string) => {
    const field = userRole === 'executor' ? 'executor_confirmed' : 'customer_confirmed';

    // Обновляем подтверждение
    await store.Deals.update({
      id: dealId,
      [field]: true
    })


    // Проверяем, подтвердили ли оба участника
    const {data:deal} = await store.Deals.queryFirst(dealId)
    if(!deal.value) return
    if (deal.value.executor_confirmed && deal.value.customer_confirmed) {
      // Автоматически запускаем сделку
      await startDeal(dealId);
    }

    // Отправляем уведомление другому участнику
    await sendConfirmationNotification(dealId, userId, userRole);
  };

  const startDeal = async (dealId: string) => {
    await store.Deals.update({
      id:dealId,
        status: 'active',
        started_at: new Date().getTime()
      })


    // Создаем уведомление о старте сделки
    await store.Notifications.create({
      type: 'deal_started',
      title: 'Сделка запущена!',
      message: 'Оба участника подтвердили старт сделки'
    });
  };

  const sendConfirmationNotification = async (dealId: string, userId: string, userRole: string) => {
    const { data: deal } = await store.Deals.queryFirst(dealId);
    if (!deal.value) return

    const targetUserId = userRole === 'executor' ? deal.value.customer_id : deal.value.executor_id;

    await store.Notifications.create({
      user_id: targetUserId,
      deal_id: dealId,
      type: 'confirmation_received',
      title: 'Подтверждение получено',
      message: `Ваш партнер подтвердил готовность начать сделку`
    });
  };

  return { confirmDealStart, startDeal };
};