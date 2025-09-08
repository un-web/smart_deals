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
const { data: deals, loading } = await store.Deals.queryMany({
  filter: {
  
}})
const customerDeals = computed(() => {
  return deals.value.filter(deal => deal.customer_id === auth.user.value?.id)
})
const invites = computed(() => {
  return customerDeals.value.filter(deal => deal.invitation_token && !deal.invitation_accepted)
})
const acceptedInvites = computed(() => {
  return invites.value.filter(deal => deal.invitation_accepted)
})

function add()  {
  // store.Deals.create({
  //   title: 'New deal',
  //   content: 'New deal1111',
  // })
  navigateTo('/deals/new')
}
</script>

<template>
  <div class="grid grid-cols-12 gap-4 p-4" v-if="auth.isAuthenticated">
    sdkfgkjsdhf
    {{ auth.role}}
    <template v-if="auth.role.value === 'Contracter'">
      <DealsList  v-if="!loading" :items="deals" class="col-span-12"/>
      <DealsNew />
    </template>
    <template v-else-if="auth.role.value === 'Customer'">
      <div>
        <h1>Сделки с моим участием</h1>
        <DealsList v-if="!loading" :items="acceptedInvites" class="col-span-12" />
      </div>
      <div>
        <h1>Мои приглашения</h1>
        <DealsList v-if="!loading" :items="invites" class="col-span-12" />
      </div>
    </template>
  </div>
</template>
