<script lang="ts" setup>
import { Card, CardDescription, DealsAddCustomer, Skeleton, StagesCollapsibleItem, StagesNew } from '#components'
import { useRoute } from 'vue-router'
definePageMeta({
  layout: 'admin',
  // middleware: ['auth'],
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
      <Card class="flex flex-col">
        <CardHeader>
          <CardTitle>
            <div class="flex items-center justify-between">{{ deal?.title }}
              <Icon name="lucide:info" class="w-5 h-5" />
            </div>
          </CardTitle>
        </CardHeader>
        <CardContent class="flex flex-col grow">
          <CardDescription>{{ deal?.short_desc }}</CardDescription>
        </CardContent>
      </Card>
      <Card class="flex flex-col">
        <CardHeader>
          <CardTitle>
            <div class="flex items-center justify-between">Текущий статус сделки
              <Icon name="lucide:tag" class="w-5 h-5" />
            </div>
          </CardTitle>
        </CardHeader>
        <CardContent class="flex flex-col grow">
          <CardDescription>{{ deal?.status }}</CardDescription>
        </CardContent>
      </Card>
      <DealsAddCustomer v-if="!deal.customer_id || !deal.invitation_token" :deal="deal" />
      <DealsViewCustomer v-else :deal="deal" />

      <!-- <Card class="flex flex-col" v-else>
        <CardHeader>
          <CardTitle>{{ customer?.first_name }} {{ customer?.last_name }}</CardTitle>
        </CardHeader>
        <CardContent class="flex flex-col grow">
          <CardDescription>{{ customer?.email}}</CardDescription>
        </CardContent>
      </Card> -->

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
    <div class="flex flex-col gap-4" v-if="!loadingStages">
      <div class="flex items-center justify-between">
        <h1>Этапы сделки</h1>
        <Button variant="outline" @click="toggleAddStageMode(true)">
          <Icon name="lucide:plus" class="w-4 h-4 mr-1" /> Добавить этап
        </Button>
      </div>
      <StagesCollapsibleItem v-for="stage, si in stages" :key="stage.id" :item="stage" :order="si + 1" />
    </div>
    <Skeleton v-else class="w-full h-20 max-w-sm"></Skeleton>
    <template v-if="deal">
      <StagesNew v-if="addStageMode" @close="toggleAddStageMode(false)" :deal="deal" />
    </template>
  </div>
</template>