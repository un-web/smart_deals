import type { Deals } from "#build/$rstore-directus-models";
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

    // Отправляем уведомление другому участнику
    await sendConfirmationNotification(dealId, userId, userRole);

    // Проверяем, подтвердили ли оба участника
    const {data:deal} = await store.Deals.queryFirst(dealId)
    if(!deal.value) return
    if (deal.value.executor_confirmed && deal.value.customer_confirmed) {
      // Автоматически запускаем сделку
      await startDeal(deal.value);
    }

  };

  const startDeal = async (deal: Deals) => {
    await store.Deals.update({
      id:deal.id,
        status: 'active',
        started_at: new Date().getTime()
      })

    // Создаем уведомление о старте сделки
    await store.Notifications.create({
      deal_id: deal.id,
      user_id: deal.customer_id,
      type: 'start_confirmation',
      title: `Сделка ${deal.title} запущена!`,
      message: 'Оба участника подтвердили старт сделки'
    });
    await store.Notifications.create({
      deal_id: deal.id,
      user_id: deal.customer_id,
      type: 'start_confirmation',
      title: `Сделка ${deal.title} запущена!`,
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
      type: 'start_confirmation',
      title: 'Подтверждение получено',
      message: `Ваш партнер подтвердил готовность начать сделку`
    });
  };

  return { confirmDealStart, startDeal };
};