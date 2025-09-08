<script setup lang="ts">
import { NuxtLink, Skeleton } from '#components';
import { ToastAction, ToastTitle } from 'reka-ui';
import { useAuth } from '../composables/useAuth';
import type { DirectusUser } from '@directus/sdk';

const props = defineProps<{ user: DirectusUser }>()

const store = useStore()
const auth = useAuth()

const { data: notifications, loading } = await store.Notifications.queryMany({
  filter: {
    _and: [{
      user_id: {
        _eq: auth.user.value?.id,
      },
      is_read: {
        _eq: false
      }
    }]
  }
})
</script>

<template>
  <NuxtLink variant="ghost" class="relative w-8 h-8 flex items-center justify-center " to="/notifications" v-if="!loading">
    <Icon name="tabler:bell-filled" class="w-6 h-6" />
    <div
      class="absolute flex items-center justify-center w-4 h-4 text-xs font-medium bg-red-500 rounded-full bottom-1 right-2">
      {{ notifications.length }}</div>
  </NuxtLink>
</template>