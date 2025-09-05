<script setup lang="ts">
import type { Notifications } from '#build/$rstore-directus-models';


const props = defineProps<{ item: Notifications }>()

</script>
<template>
  <Card class="flex flex-col">
    <CardHeader>
      {{ props.item.title }}
    </CardHeader>
    <CardContent class="grow">{{ props.item.message }}</CardContent>
  </Card>
</template>