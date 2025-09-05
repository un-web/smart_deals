<script setup lang="ts">
import { nanoid } from 'nanoid'
import { toTypedSchema } from '@vee-validate/zod';
import { useForm } from "vee-validate"
import * as z from "zod"
import { useToast } from '@/client/components/ui/toast/use-toast'
import type { directus_users, Deals } from '#build/$rstore-directus-models';
import { readItems, readRoles, readRole, readUsers, readMe } from '@directus/sdk';
import { getRoleByName } from '~/client/utils';
import {find} from 'remeda'

const props = defineProps<{
  deal: Deals
}>()
const store = useStore()
const { toast } = useToast()

const [addCustomerMode, toggleAddCustomerMode] = useToggle(false)

const formSchema = toTypedSchema(z.object({
  customer_id: z.string(),
  invitation_token: z.string(),
}))

const { isFieldDirty, handleSubmit, setFieldValue, values } = useForm({
  validationSchema: formSchema,
})

// const customer = asyncComputed(()=>
//  $fetch('/api/user', {
//   method: 'POST',
//   body: {id:props.deal.customer_id}
// }))

const customerRole = await getRoleByName('Сustomer')

const users = await $fetch('/api/users', {
  method: 'POST',
  body: { role: customerRole }
})
console.log(users)
// const users = await store.U
const customer = computed(() => find(users, (user)=>user.id === props.deal.customer_id))

// Function to generate and set invitation token
const generateInvitationToken = () => {
  const token = nanoid()// You'll need to implement this
  setFieldValue('invitation_token', token)
}

// Function to copy token to clipboard
const copyTokenToClipboard = async () => {
  const token = values.invitation_token
  if (token) {
    await navigator.clipboard.writeText(token)
    toast({
      title: "Token copied to clipboard",
      description: "The invitation token has been copied to your clipboard.",
    })
  }
}
const onSubmit = handleSubmit((values) => {
  store.Deals.update({
    id: props.deal.id,
    ...values
  }).then((res) => {
    if (res) {
      store.Notifications.create({
        type: 'deal_invitation',
        status: 'published',
        user_id: props.deal.customer_id,
        deal_id: props.deal.id,
        title: 'Приглашение в сделку',
        is_read: false,
        message: `Вас пригласили в сделку ${props.deal.title}`
      })
      toast({
        title: "You submitted the following values:",
        description: h("pre", { class: "mt-2 w-[340px] rounded-md bg-slate-950 p-4" }, h("code", { class: "text-white" }, JSON.stringify(values, null, 2))),
      })
      addCustomerMode.value = false
    }
  })
})
</script>
<template>
  <Dialog v-model:open="addCustomerMode">
    <DialogTrigger as-child>
      <Card class="flex flex-col cursor-pointer hover:bg-secondary" @click="toggleAddCustomerMode(true)">
        <CardHeader>
          <CardTitle>
            <div class="flex items-center justify-between">Заказчик
              <Icon name="lucide:user-plus" class="w-5 h-5" />
            </div>
          </CardTitle>
        </CardHeader>
        <CardContent class="flex flex-col grow">
          <CardDescription>
            <template v-if="!props.deal.customer_id">Не выбран</template>
            <template
              v-else-if="props.deal.customer_id && props.deal.invitation_token && !props.deal.invitation_accepted">Приглашение
              отправлено</template>
            <template
              v-else-if="props.deal.customer_id && customer && props.deal.invitation_accepted">{{ customer.first_name }}
              {{ customer.last_name }}</template>
          </CardDescription>
        </CardContent>
      </Card>
    </DialogTrigger>
    <DialogContent class="sm:max-w-[425px]">

        <DialogHeader>
          <DialogTitle>Выбрать заказчика</DialogTitle>
          <DialogDescription>
            Введите название сделки и краткое описание
          </DialogDescription>
        </DialogHeader>
        <form id="dialogForm" class="space-y-6" @submit="onSubmit">
          <FormField v-slot="{ componentField }" name="customer_id" :value="props.deal.customer_id">
            <FormItem>
              <FormLabel>Пользователь</FormLabel>
              <Select v-bind="componentField">
                <FormControl>
                  <SelectTrigger>
                    <SelectValue placeholder="Select a verified email to display" />
                  </SelectTrigger>
                </FormControl>
                <SelectContent>
                  <SelectGroup>
                    <SelectItem :value="user.id" v-for="user in users">
                      <div class="flex-col">
                        <div>{{ user.first_name }} {{ user.last_name }}</div>
                        <div class="text-xs text-muted-foreground">
                          {{ user.email }}
                        </div>
                      </div>
                    </SelectItem>
                  </SelectGroup>
                </SelectContent>
              </Select>
              <FormMessage />
            </FormItem>
          </FormField>
          <FormField v-slot="{ componentField }" name="invitation_token" :value="props.deal.customer_id">
            <FormItem>
              <FormLabel>Ссылка на приглашение</FormLabel>
              <div class="flex items-center gap-1">
                <Input v-bind="componentField" />
                <div class="flex items-center justify-center p-2 border rounded" @click="generateInvitationToken">
                  <Icon name="lucide:dices" class="w-5 h-5" />
                </div>
                <div class="flex items-center justify-center p-2 border rounded" @click="copyTokenToClipboard">
                  <Icon name="lucide:copy" class="w-5 h-5" />
                </div>
              </div>
              <FormMessage />
            </FormItem>
          </FormField>
        </form>

      <DialogFooter>
        <Button type="submit" form="dialogForm">
          Save changes
        </Button>
      </DialogFooter>
    </DialogContent>
  </Dialog>
</template>