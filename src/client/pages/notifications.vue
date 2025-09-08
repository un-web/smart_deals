<script setup lang="ts">
import type { DirectusUser } from '@directus/sdk';
import { useAuth } from '../composables/useAuth'

definePageMeta({
  layout: 'admin',
  middleware: ['auth'],
})
const store = useStore()
const auth = useAuth()
const {data:notifications,loading} = await store.Notifications.queryMany({
  filter: {
    user_id: {
      _eq: auth.user.value?.id,
    },
  }
})
</script>
<template>
  <div class="flex flex-col h-full gap-4 p-4">
    <h1>Notifications</h1>
    {{ notifications }}
    <div class="flex flex-col gap-4" v-if="!loading && auth.user">
      <NotificationsItem v-for="notification in notifications" :key="notification.id" :item="notification" />
    </div>
  </div>
</template>