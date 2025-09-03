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


definePageMeta({
  layout: 'default'
})

const credentials = ref<Credential>()

const formSchema = toTypedSchema(z.object({
  email: z.string() .email(),
  password: z.string().min(8)
}))

const { isFieldDirty, handleSubmit } = useForm({
  validationSchema: formSchema,
})

const onSubmit = handleSubmit((values) => {
  toast({
    title: "You submitted the following values:",
    description: h("pre", { class: "mt-2 w-[340px] rounded-md bg-slate-950 p-4" }, h("code", { class: "text-white" }, JSON.stringify(values, null, 2))),
  })
  $fetch('/hello', {
    method: 'POST',
    body: values
  })
  .then(async (res) => {
    if(res) {
      await navigateTo('/')
    }
  })
  .catch((error) => alert(error))
})
</script>

<template>
  <Card class="w-full max-w-lg">
  <CardHeader>Авторизация</CardHeader>
  <CardContent>
    <form class="w-full space-y-6" @submit="onSubmit">
      <FormField v-slot="{ componentField }" name="email" :validate-on-blur="!isFieldDirty">
        <FormItem>
          <FormLabel>Email</FormLabel>
          <FormControl>
            <Input type="text" placeholder="shadcn" v-bind="componentField" />
          </FormControl>
          <FormDescription>
            This is your public display name.
          </FormDescription>
          <FormMessage />
        </FormItem>
      </FormField>
      <FormField v-slot="{ componentField }" name="password" :validate-on-blur="!isFieldDirty">
        <FormItem>
          <FormLabel>Пароль</FormLabel>
          <FormControl>
            <Input type="password" placeholder="shadcn"  autocomplete="on" v-bind="componentField" />
          </FormControl>
          <FormDescription>
            This is your public display name.
          </FormDescription>
          <FormMessage />
        </FormItem>
      </FormField>
      <Button type="submit">
        Submit
      </Button>
    </form>
    <div>Нет учетной записи? <a href="/signup">Зарегистрироваться</a></div>
  </CardContent>
</Card>
</template>
