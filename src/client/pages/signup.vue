<script lang="ts" setup>

import { toTypedSchema } from "@vee-validate/zod"
import { useForm } from "vee-validate"
import { h } from "vue"
import * as z from "zod"

import { Button } from "@/client/components/ui/button"
import {
  FormControl,
  FormDescription,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/client/components/ui/form"
import { Input } from "@/client/components/ui/input"
import { toast } from "@/client/components/ui/toast/use-toast"
import { registerUser, updateUser } from "@directus/sdk"


definePageMeta({
  layout: 'default'
})


const passwordSchema = z
  .string()
  .min(8 )
  .max(20)
  // .refine((password) => /[A-Z]/.test(password))
  // .refine((password) => /[a-z]/.test(password))
  // .refine((password) => /[0-9]/.test(password))
  // .refine((password) => /[!@#$%^&*]/.test(password));

const formSchema = toTypedSchema(z.object({
  email: z.string().email(),
  password: passwordSchema,
  confirmPassword: z.string(),
  role: z.string()
}).refine((data) => data.password === data.confirmPassword, {
  path: ['confirmPassword'],
}))

const { isFieldDirty, handleSubmit } = useForm({
  validationSchema: formSchema,
  initialValues: {
    role: 'Customer'
  }
})

const onSubmit = handleSubmit( async (values) => {
  console.log(values)
  await $fetch('/api/signup', {
    method: 'POST',
    body: values
  }).then(()=>{

    navigateTo('/')
  })
})
</script>

<template>
  <Card class="w-full max-w-lg">
    <CardHeader>Регистрация нового пользователя</CardHeader>
    <CardContent>
      <form class="w-full space-y-6" @submit="onSubmit">
        <FormField v-slot="{ componentField }" name="role" :validate-on-blur="!isFieldDirty">
          <FormItem>
            <FormControl>
              <RadioGroup default-value="Customer" class="grid w-full grid-cols-2 gap-4" v-bind="componentField">
                <FormItem class="flex items-center space-y-0 gap-x-3">
                  <FormControl>
                    <RadioGroupItem id="Customer" value="Customer" class="sr-only peer" />
                    <Label for="Customer" class="radio-button">
                      <Icon name="lucide:user" class="w-6 h-6" />
                      Заказчик
                    </Label>
                  </FormControl>
                </FormItem>
                <FormItem class="flex items-center space-y-0 gap-x-3">
                  <FormControl>
                    <RadioGroupItem value="Contracter" id="Contracter" class="sr-only peer" />
                    <Label for="Contracter" class="radio-button">
                      <Icon name="lucide:hammer" class="w-6 h-6" />
                      Подрядчик
                    </Label>
                  </FormControl>

                </FormItem>
              </RadioGroup>
            </FormControl>
            <FormMessage />
          </FormItem>
        </FormField>
        <FormField v-slot="{ componentField }" name="email" :validate-on-blur="!isFieldDirty">
          <FormItem>
            <FormLabel>Email</FormLabel>
            <FormControl>
              <Input type="text" placeholder="shadcn" v-bind="componentField" />
            </FormControl>
            <FormMessage />
          </FormItem>
        </FormField>
        <FormField v-slot="{ componentField }" name="password" :validate-on-blur="!isFieldDirty">
          <FormItem>
            <FormLabel>Пароль</FormLabel>
            <FormControl>
              <Input type="password" placeholder="shadcn" autocomplete="on" v-bind="componentField" />
            </FormControl>
            <FormMessage />
          </FormItem>
        </FormField>
        <FormField v-slot="{ componentField }" name="confirmPassword" :validate-on-blur="!isFieldDirty">
          <FormItem>
            <FormLabel>Подтверждение пароля</FormLabel>
            <FormControl>
              <Input type="password" placeholder="shadcn" autocomplete="on" v-bind="componentField" />
            </FormControl>
            <FormMessage />
          </FormItem>
        </FormField>
        <Button type="submit">
          Submit
        </Button>
      </form>
    </CardContent>
  </Card>
</template>

<style lang="postcss">
.radio-button {
  @apply flex flex-col gap-2 items-center justify-between rounded-md border-2 border-muted bg-popover p-4 hover:bg-accent hover:text-accent-foreground w-full peer-data-[state=checked]:border-emerald-700 [&:has([data-state=checked])]:border-emerald-700
  peer-data-[state=checked]:bg-emerald-700 [&:has([data-state=checked])]:bg-emerald-700
  peer-data-[state=checked]:text-white [&:has([data-state=checked])]:text-white

}
</style>
