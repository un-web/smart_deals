<script setup lang="ts">
import type { Notifications } from '#build/$rstore-directus-models';
import { CardFooter } from '#components';

const store = useStore()
const props = defineProps<{ item: Notifications }>()
function handleMarkAsRead() {
  store.Notifications.update({
    id: props.item.id,
    is_read: true
  })
}
</script>
<template>
  <Card class="flex flex-col">
    <CardHeader>
      {{ props.item.title }}
    </CardHeader>
    <CardContent class="grow">{{ props.item.message }}</CardContent>
    <CardFooter>
      <Button variant="ghost" size="sm" @click="handleMarkAsRead()"><Icon name="lucide:check" class="w-4 h-4 mr-1 " />Отметить как прочитанное</Button>
    </CardFooter>
  </Card>
</template>