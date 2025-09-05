<script setup lang="ts">
import { NuxtLink, Skeleton } from '#components';
import { ToastAction, ToastTitle } from 'reka-ui';
import { useAuth } from '../composables/useAuth';


const store = useStore()
const auth = useAuth()
const {data:notifications,loading} = await store.Notifications.queryMany({
  filter: {
    user_id: {
      _eq: auth.user.value?.id,
    },
    is_read: {
      _eq: false
    }
  },
  sort: ['-date_created'],
})
</script>

<template>

      <NuxtLink variant="ghost" class="relative" to="/notifications">
        {{ auth.user.value?.id }}
        <Icon name="tabler:bell-filled" class="w-6 h-6" />
        <div
          class="absolute flex items-center justify-center w-4 h-4 text-xs font-medium bg-red-500 rounded-full bottom-1 right-2">
          {{ notifications.length }}</div>
      </NuxtLink>

</template>