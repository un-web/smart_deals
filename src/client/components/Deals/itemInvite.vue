<script setup lang="ts">
import type { Deals } from '#build/$rstore-directus-models';
const props = defineProps<{ item: Deals }>()

const store = useStore()
const { data: stages, loading } = await store.DealStages.queryMany({
  filter: {
    deal_id: {
      _eq: props.item.id,
    },
  },
  sort: ['-date_created'],
})

const handleAccept = ()=>{
  store.Deals.update({
    id:props.item.id,
    invitation_accepted: true    
  })
}
</script>
<template>
  <Card class="flex flex-col" @click="navigateTo(`/deals/${props.item.id}`)">
    <CardHeader>
      <!-- <CardDescription>Название</CardDescription> -->
      <CardTitle>{{ props.item.title }}</CardTitle>
    </CardHeader>
    <!-- <CardContent class="grow">{{ props.item.short_desc }}</CardContent> -->
    <CardFooter class="gap-4">
      <Button @click="handleAccept" variant="default" size="sm"><Icon name="lucide:check" class="w-4 h-4 mr-1 " />Принять</Button>
      <Button  variant="destructive" size="sm"><Icon name="lucide:x" class="w-4 h-4 mr-1 " />Отклонить</Button>
    </CardFooter>
  </Card>
</template>