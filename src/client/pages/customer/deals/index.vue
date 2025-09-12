<script setup lang="ts">
import { useAuth } from '~/client/composables/useAuth'

definePageMeta({
  // set custom layout
  layout: 'admin',
  middleware: ['auth'],
})
const { t } = useI18n()
const auth = useAuth()
const store = useStore()
const { data: deals, loading } = await store.Deals.liveQueryMany({
  filter: {
    customer_id: {
      _eq: auth.user.value?.id,
    },
  }
})

const invites = computed(() => {
  return deals.value.filter(deal => deal.invitation_token && !deal.invitation_accepted)
})
const acceptedInvites = computed(() => {
  return deals.value.filter(deal => deal.invitation_accepted)
})



const dealsItem = resolveComponent('DealsItem')
const dealsItemInvite = resolveComponent('DealsItemInvite')

</script>

<template>
  <div class="grid grid-cols-12 gap-8 p-4" v-if="!loading">
      <div class="flex flex-col col-span-12 gap-2">
        <h1 class="text-lg">Ваши приглашения</h1>
        <DealsList  v-if="invites.length>0" :items="invites" :component="dealsItemInvite"/>
        <p class="text-sm" v-else>Список пуст</p>
      </div>

      <!-- <DealsNew /> -->
      <div class="flex flex-col col-span-12 gap-2">

      <h1 class="text-lg">Сделки в которых вы участвуете</h1>
      <DealsList  v-if="acceptedInvites.length>0" :items="acceptedInvites" :component="dealsItem"/>
      <p class="text-sm text-secondary" v-else>Список пуст</p>
    </div>
  </div>
</template>
