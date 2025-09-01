<script lang="ts" setup>
import { Card, Skeleton, StagesCollapsibleItem, StagesNew } from '#components'
import { useRoute } from 'vue-router'
definePageMeta({
  layout: 'admin',
  middleware: ['auth'],
})
const [addMode,toggleAddMode] = useToggle(false)
const route = useRoute()
const store = useStore()

console.log(route.params.id)

const { data: deal, loading: loadingDeal } = store.Deals.queryFirst(route.params.id as string)
const {data: stages,loading:  loadingStages} = await store.DealStages.queryMany( {
  filter: {
    deal: {
      _eq: deal.value?.id,
    },}})
</script>

<template>
  <div class="flex flex-col gap-4 p-4">
    <Card class="flex flex-col" v-if="!loadingDeal">
      <CardHeader>{{ deal?.title }}</CardHeader>
      <CardContent class="flex flex-col grow" v-if="!loadingDeal">
        <div>{{ deal?.description }}</div>
        <div v-html="deal?.content"></div>
      </CardContent>
      <Skeleton v-else class="w-full h-8 max-w-sm"></Skeleton>
    </Card>
    <div class="flex flex-col gap-2" v-if="!loadingStages">
      <h1>Этапы сделки</h1>
      {{ addMode }}
      <Button variant="outline" @click="toggleAddMode(true)">Добавить этап</Button>
      <StagesCollapsibleItem v-for="stage in stages" :key="stage.id" />
    </div>
    <Skeleton v-else class="w-full h-20 max-w-sm"></Skeleton>
    <StagesNew v-if="addMode" @close="toggleAddMode(false)" />
  </div>
</template>