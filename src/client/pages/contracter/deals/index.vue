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
const { data: deals, loading } = await store.Deals.queryMany()
// const customerDeals = computed(() => {
//   return deals.value.filter(deal => deal.customer_id === auth.user.value?.id)
// })
// const invites = computed(() => {
//   return customerDeals.value.filter(deal => deal.invitation_token && !deal.invitation_accepted)
// })
// const acceptedInvites = computed(() => {
//   return invites.value.filter(deal => deal.invitation_accepted)
// })

function add()  {
  // store.Deals.create({
  //   title: 'New deal',
  //   content: 'New deal1111',
  // })
  navigateTo('/deals/new')
}
const DealsItem = resolveComponent('DealsItem')

</script>

<template>
  <div class="grid grid-cols-12 gap-4 p-4" v-if="auth.isAuthenticated">
      <DealsList  v-if="!loading" :items="deals" class="col-span-12" :component="DealsItem"/>
      <DealsNew />
  </div>
</template>
