<script setup lang="ts">
import { toTypedSchema } from '@vee-validate/zod';
import { useForm } from "vee-validate"
import * as z from "zod"
import { useToast } from '@/client/components/ui/toast/use-toast'
import type { Deals } from '#build/$rstore-directus-models';
import { readItems, readRoles, readRole, readUsers,readMe } from '@directus/sdk';

const props = defineProps<{
  deal: Deals
}>()
const store = useStore()
const { toast } = useToast()
const [addCustomerMode, toggleAddCustomerMode] = useToggle(false)
const { $directus} = useNuxtApp()
const formSchema = toTypedSchema(z.object({
  customer: z.string(),
}))

const { isFieldDirty, handleSubmit } = useForm({
  validationSchema: formSchema,
})
const me = await $directus.request(readMe())

async function getRoleByName(roleName:string) {
  try {
    // First, get all roles to find the one with matching name
    const allRoles = await $directus.request(readRoles());
    const targetRole = allRoles.find(role => role.name === roleName);
console.log(targetRole)
    if (targetRole) {
      // Now fetch the complete role details using its ID
      const roleDetails = await $directus.request(readRole(targetRole.id));
      return roleDetails;
    }
    return null;
  } catch (error) {
    console.error('Error fetching role:', error);
    throw error;
  }
}

const customerRole = await getRoleByName('Сustomer')
const users = await $directus.request(readUsers(customerRole && me ? {
  filter:  {
    id: {
      _in: customerRole.users,
      _neq: me.id
    },
  }
} : {enabled:false}
))

const onSubmit = handleSubmit((values) => {
  store.Deals.update(values).then((res) => {
    if (res) {
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
          <CardDescription>Не указан</CardDescription>
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

      <form id="dialogForm" @submit="onSubmit" class="space-y-6" >

        <FormField v-slot="{ componentField }" name="customer">
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
      </form>

      <DialogFooter>
        <Button type="submit" form="dialogForm">
          Save changes
        </Button>
      </DialogFooter>
    </DialogContent>
  </Dialog>
</template>