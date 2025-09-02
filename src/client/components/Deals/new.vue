<script setup lang="ts">
import { toTypedSchema } from "@vee-validate/zod"
import { h } from "vue"
import * as z from "zod"

// import { Button } from "@/client/components/ui/button"
// import {
//   Dialog,
//   DialogContent,
//   DialogDescription,
//   DialogFooter,
//   DialogHeader,
//   DialogTitle,
//   DialogTrigger,
// } from "@/client/components/ui/dialog"
// import {
//   Form,
//   FormControl,
//   FormDescription,
//   FormField,
//   FormItem,
//   FormLabel,
//   FormMessage,
// } from "@/client/components/ui/form"
// import { Input } from "@/client/components/ui/input"
import { useToast } from '@/client/components/ui/toast/use-toast'
import type { Deals } from "#build/$rstore-directus-models"


const { toast } = useToast()

const formSchema = toTypedSchema(z.object({
  title: z.string().min(2).max(50),
  short_desc: z.string().min(2).max(50).optional(),
}))

const store = useStore()

function onSubmit(values: any) {
  console.log(values)
  store.Deals.create(values).then((res) => {
    if (res) {
      toast({
        title: "You submitted the following values:",
        description: h("pre", { class: "mt-2 w-[340px] rounded-md bg-slate-950 p-4" }, h("code", { class: "text-white" }, JSON.stringify(values, null, 2))),
      })
      isOpen.value = false
    }
  })
}

const isOpen = ref(false)
</script>

<template>
  <Form v-slot="{ handleSubmit }" as="" keep-values :validation-schema="formSchema">
    <Dialog v-model:open="isOpen">
      <DialogTrigger as-child>
        <Button class="absolute flex items-center justify-center p-3 bg-green-700 rounded-full size-14 bottom-6 right-6">
          <Icon name="lucide:plus" class="text-lg" />
        </Button>

      </DialogTrigger>
      <DialogContent class="sm:max-w-[425px]">
        <DialogHeader>
          <DialogTitle>Новая сделка</DialogTitle>
          <DialogDescription>
            Введите название сделки и краткое описание
          </DialogDescription>
        </DialogHeader>

        <form id="dialogForm" @submit="handleSubmit($event, onSubmit)" class="space-y-6">
          <FormField v-slot="{ componentField }" name="title">
            <FormItem>
              <FormLabel>Название сделки</FormLabel>
              <FormControl>
                <Input type="text" placeholder="shadcn" v-bind="componentField" />
              </FormControl>
              <!-- <FormDescription>
                This is your public display name.
              </FormDescription> -->
              <FormMessage />
            </FormItem>
          </FormField>
          <FormField v-slot="{ componentField }" name="short_desc">
            <FormItem>
              <FormLabel>Краткое описание</FormLabel>
              <FormControl>
                <Input type="text" placeholder="shadcn" v-bind="componentField" />
              </FormControl>
              <!-- <FormDescription>
                This is your public display name.
              </FormDescription> -->
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
</Form></template>