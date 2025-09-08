<script setup lang="ts">
import { nanoid } from 'nanoid'
import { toTypedSchema } from '@vee-validate/zod';
import { useForm } from "vee-validate"
import * as z from "zod"
import { useToast } from '@/client/components/ui/toast/use-toast'
import type { directus_users, Deals } from '#build/$rstore-directus-models';
import { readItems, readRoles, readRole, readUsers, readMe } from '@directus/sdk';
import { getRoleByName } from '~/client/utils';
import { find } from 'remeda'

const props = defineProps<{
  deal: Deals
}>()
const store = useStore()
const { toast } = useToast()


const [viewMode, toggleViewMode] = useToggle(false)
const users = await $fetch('/api/users', {
  method: 'POST',
  body: {}
})
console.log(users)
// const users = await store.U
const customer = computed(() => find(users, (user) => user.id === props.deal.customer_id))

// Function to copy token to clipboard
const copyTokenToClipboard = async () => {
  const token = props.deal.invitation_token
  if (token) {
    await navigator.clipboard.writeText(token)
    toast({
      title: "Token copied to clipboard",
      description: "The invitation token has been copied to your clipboard.",
    })
  }
}

async function handleCleanInvitation() {
  try {
    await store.Deals.update({
      id: props.deal.id,
      invitation_token: null,
      customer_id: null,
      invitation_accepted: false
    })
  } catch (error) {
    console.error(error)
  }
  viewMode.value = false
}
</script>
<template>
  <Dialog v-model:open="viewMode">
    <DialogTrigger as-child>
      <Card class="flex flex-col cursor-pointer hover:bg-secondary" @click="toggleViewMode(true)">
        <CardHeader>
          <CardTitle>
            <div class="flex items-center justify-between">
              <div>
                Заказчик
              </div>
              <Icon name="lucide:user-plus" class="w-5 h-5" />
            </div>
          </CardTitle>
        </CardHeader>
        <CardContent class="flex flex-col grow">

              <div class="flex gap-2">
                <div v-if="customer">
                  {{ customer.first_name }} {{ customer.last_name }}
                </div>
                <Badge v-if="props.deal.invitation_accepted">Участие подтверждено</Badge>
                <Badge v-else>Ожидаем ответа</Badge>
              </div>
        </CardContent>
      </Card>
    </DialogTrigger>
    <DialogContent class="sm:max-w-[425px]">
      <DialogHeader>
        <DialogTitle>Заказчик</DialogTitle>
      </DialogHeader>
      <div class="flex items-center justify-between gap-1">
        <Label>Имя</Label>
        <div>{{ customer?.first_name }}</div>
      </div>
      <div class="flex items-center justify-between gap-1">
        <Label>Фамилия</Label>
        <div>{{ customer?.last_name ?? '--' }}</div>
      </div>
      <div class="flex items-center justify-between gap-1">
        <Label>Email</Label>
        <div>{{ customer?.email}}</div>
      </div>
      <Label>Ссылка на приглашение</Label>
      <div class="flex items-center gap-1">

        <!-- {{ props.deal }} -->
        <Input :defaultValue="props.deal.invitation_token" type="text" :disabled="true" />
        <div
          class="flex items-center justify-center p-2 transition border rounded cursor-pointer hover:bg-secondary h-9 w-9"
          @click="copyTokenToClipboard">
          <Icon name="lucide:copy" class="w-4 h-4" />
        </div>
      </div>


      <DialogFooter>
        <Button variant="outline" class="mr-auto" @click="handleCleanInvitation()">
          Сменить заказчика
        </Button>
        <DialogClose>
          <Button >
            Закрыть
          </Button>
        </DialogClose>
      </DialogFooter>
    </DialogContent>
  </Dialog>
</template>