<script setup lang="ts">
import type { Deals } from '#build/$rstore-directus-models';
const props = defineProps<{ item: Deals }>()

const store = useStore()
const { data: stages, loading } = await store.DealStages.queryMany({
  filter: {
    deal: {
      _eq: props.item.id,
    },
  },
  sort: ['-date_created'],
})


</script>
<template>
  <Card class="flex flex-col transition cursor-pointer hover:bg-secondary" @click="navigateTo(`/deals/${props.item.id}`)">
    <CardHeader>{{ props.item.id }} {{ props.item.title }}</CardHeader>
    <CardContent class="grow">{{ props.item.short_desc }}</CardContent>
    <!-- <div v-if="sta ges">{{ stages }}</div> -->
    <CardFooter v-if="!loading" class="flex gap-2">
      <StagesProgress :items="stages" />
    </CardFooter>
  </Card>
</template>