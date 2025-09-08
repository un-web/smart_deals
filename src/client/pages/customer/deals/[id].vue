<script lang="ts" setup>
import { Card, CardDescription, DealsAddCustomer, Skeleton, StagesCollapsibleItem, StagesNew } from '#components'
import { useRoute } from 'vue-router'
definePageMeta({
  layout: 'admin',
  middleware: ['auth'],
})
const [addStageMode, toggleAddStageMode] = useToggle(false)

const route = useRoute()
const store = useStore()

const { data: deal, loading: loadingDeal } = await store.Deals.queryFirst(route.params.id as string)
const { data: stages, loading: loadingStages } = await store.DealStages.liveQueryMany({
  filter: {
    deal_id: {
      _eq: deal.value?.id,
    },
  }
})


</script>

<template>

  <div class="flex flex-col gap-6 p-4">
    <div class="grid grid-cols-3 gap-4" v-if="deal">
      <DealsDetails :deal="deal"/>
      <DealsStatus :deal="deal"/>
      <DealsContracter :deal="deal" />

     </div>
    <Collapsible class="space-y-2 w-min" v-if="deal?.content">
      <div class="flex items-center justify-between space-x-4">
        <h4 class="text-sm font-semibold whitespace-nowrap">
          Подробное описание
        </h4>
        <CollapsibleTrigger as-child>
          <Button variant="ghost" size="sm" class="p-0 w-9">
            <Icon name="lucide:chevron-down" class="w-4 h-4" />
            <span class="sr-only">Toggle</span>
          </Button>
        </CollapsibleTrigger>
      </div>
      <CollapsibleContent class="space-y-2">
        <div v-html="deal?.content"></div>
      </CollapsibleContent>
    </Collapsible>
    <template v-if="!loadingStages">
      <div class="flex flex-col gap-4" >
        <div class="flex items-center justify-between">
          <h1>Этапы сделки</h1>
        </div>
        <StagesCustomerView :items="stages" />
      </div>
    </template>
    <Skeleton v-else class="w-full h-20 max-w-sm"></Skeleton>
    <template v-if="deal">
      <StagesNew v-if="addStageMode" @close="toggleAddStageMode(false)" :deal="deal" />
    </template>
  </div>
</template>