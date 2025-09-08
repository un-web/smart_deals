<script setup lang="ts">
import type { Deals } from '#build/$rstore-directus-models';
import { Icon } from '#components';
const { t } = useI18n()
const props = defineProps<{ deal: Deals }>()
</script>
<template>
  <Card class="flex flex-col">
    <CardHeader>
      <CardTitle>
        <div class="flex items-center justify-between">
          <div class="flex items-center gap-4">Статус сделки<Badge>{{ t(`deals.status.${props.deal?.status}`) }}</Badge>
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
</template>