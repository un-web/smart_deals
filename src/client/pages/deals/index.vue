<script setup lang="ts">
import { useAuth } from '~/client/composables/useAuth'

definePageMeta({
  // set custom layout
  layout: 'admin',
  // middleware: ['auth'],
})
const { t } = useI18n()
function add()  {
  // store.Deals.create({
  //   title: 'New deal',
  //   content: 'New deal1111',
  // })
  navigateTo('/deals/new')
}
const store = useStore()
const { data: deals, loading } = await store.Deals.queryMany()
const auth = useAuth()

</script>

<template>
  <div class="grid grid-cols-12 gap-4 p-4" v-if="auth.isAuthenticated">
    <DealsList  v-if="!loading" :items="deals" class="col-span-12"/>
    <DealsNew />
  </div>
</template>
