<script setup lang="ts">
import type { DirectusUser } from '@directus/sdk';
import { useAuth } from '../composables/useAuth'
import { Collapsible } from '#components';

definePageMeta({
  layout: 'admin',
  middleware: ['auth'],
})
const store = useStore()
const auth = useAuth()
const { data: notifications, loading } = await store.Notifications.queryMany({
  filter: {
    user_id: {
      _eq: auth.user.value?.id,
    },
  }
})
const news = computed(() => {
  return notifications.value.filter(n => !n.is_read)
})
const old = computed(() => {
  return notifications.value.filter(n => n.is_read)
})
</script>
<template>
  <div class="flex flex-col h-full gap-4 p-4" v-if="!loading && auth.user">
    <h1 class="text-lg">Уведомления</h1>
    <div class="flex flex-col gap-4">
      <template v-if="news.length > 0">
        <NotificationsItem v-for="n in news" :key="n.id" :item="n" />
      </template>
      <template v-else>
        Новые уведомления отсутствуют
      </template>
    </div>
    <Separator />
    <Collapsible class="w-full space-y-2 border rounded-lg">
      <div class="flex items-center justify-between px-4 py-2">
        <div class="flex items-center gap-2"><Icon name="lucide:archive" class="w-4 h-4" />Архивные</div>
        <CollapsibleTrigger as-child>
          <Button variant="ghost" size="sm" class="p-0 w-9">
            <Icon name="lucide:chevron-down" class="w-4 h-4" />
            <span class="sr-only">Toggle</span>
          </Button>
        </CollapsibleTrigger>
      </div>
      <CollapsibleContent class="px-4 space-y-2">
        <NotificationsItem v-for="n in old" :key="n.id" :item="n" />
      </CollapsibleContent>
    </Collapsible>
  </div>
</template>