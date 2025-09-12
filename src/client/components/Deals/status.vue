<script setup lang="ts">
import type { Deals } from '#build/$rstore-directus-models';
import { Icon } from '#components';
import { useAuth } from '~/client/composables/useAuth';
import { useDeals } from '~/client/composables/useDeals';
const { t } = useI18n()
const props = defineProps<{ deal: Deals }>()
const auth = useAuth()
const store = useStore()
const deals = useDeals()

const isOpen = ref(false)
async function confirmDeal() {
  if(!auth.user.value || !auth.role.value) return
  await deals.confirmDealStart(props.deal.id, auth.user.value?.id, auth.role.value)
  isOpen.value = false
}
</script>
<template>
  <Dialog v-model:open="isOpen">
    <DialogTrigger as-child>
      <Card class="flex flex-col cursor-pointer hover:cursor-pointer hover:bg-accent transiton">
        <CardHeader>
          <CardTitle>
            <div class="flex items-center justify-between">
              <div class="flex items-center gap-4">Статус сделки<Badge>{{ t(`deals.status.${props.deal?.status}`) }}
                </Badge>
              </div>
              <Icon name="lucide:tag" class="w-5 h-5" />
            </div>
          </CardTitle>
        </CardHeader>
        <CardContent class="flex flex-col grow">
          <div class="flex items-center gap-2 text-sm "
            :class="props.deal.executor_confirmed ? 'text-emerald-700' : 'text-rose-700'">
            <Icon name="lucide:hammer" />
            <span v-if="props.deal.executor_confirmed" class="text-emerald-700">Исполнитель подтвердил готовность</span>
            <span v-else class="text-rose-700">Исполнитель не подтвердил готовность</span>
          </div>
          <div class="flex items-center gap-2 text-sm"
            :class="props.deal.customer_confirmed ? 'text-emerald-700' : 'text-rose-700'">
            <Icon name="lucide:user" />
            <span v-if="props.deal.customer_confirmed" class="text-emerald-700">Заказчик подтвердили готовность</span>
            <span v-else class="text-rose-700">Заказчик не подтвердили свою готовность</span>
          </div>
          <!-- <CardDescription>{{ t(`deals.status.${props.deal?.status}`) }}</CardDescription> -->
        </CardContent>
      </Card>
    </DialogTrigger>
    <DialogContent class="sm:max-w-[425px]">

      <DialogHeader>
        <DialogTitle>Статус сделки</DialogTitle>
        <DialogDescription>
          Вы даете свое согласие на старт сделки?
        </DialogDescription>
      </DialogHeader>
      <DialogFooter>
        <Button type="submit" @click="confirmDeal()">
          Дать согласие
        </Button>
        <DialogClose as-child>
          <Button>
            Закрыть
          </Button>
        </DialogClose>
      </DialogFooter>
    </DialogContent>
  </Dialog>

</template>