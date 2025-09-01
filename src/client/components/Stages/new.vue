<script setup lang="ts">

import type { DealStages } from '#build/$rstore-directus-models'
import { useToast } from '@/client/components/ui/toast/use-toast'
import { toTypedSchema } from "@vee-validate/zod"
import { h } from "vue"
import type { ZodObject, ZodType } from 'zod'
import * as z from "zod"

const props = defineProps<{
  item: DealStages
}>()

const emits = defineEmits(['close'])
const { toast } = useToast()


const { $isAuthenticated } = useNuxtApp()
const user = await $isAuthenticated()
const formSchema = toTypedSchema(z.object({
  deal: z.number(),
  content: z.string().optional(),
  contracter: z.string().optional(),
  short_desc: z.string().optional(),
  title: z.string().min(2).max(50),
}))

const store = useStore()

function onSubmit(values: any) {

  store.Deals.create(values).then((res) => {
    if (res) {
      toast({
        title: "You submitted the following values:",
        description: h("pre", { class: "mt-2 w-[340px] rounded-md bg-slate-950 p-4" }, h("code", { class: "text-white" }, JSON.stringify(values, null, 2))),
      })
    }
  })
}

</script>
<template>
  <Card>
    <CardHeader>Новый этап</CardHeader>
    {{ user }}
    <CardContent>
      <Form v-slot="{ handleSubmit }" as="" keep-values :validation-schema="formSchema">
        <form id="newStageForm" @submit="handleSubmit($event, onSubmit)" class="space-y-6">
          <FormField v-slot="{ componentField }" name="title">
            <FormItem>
              <FormLabel>Название этапа</FormLabel>
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
      </Form>
    </CardContent>
    <CardFooter>
      <div class="flex gap-4">
        <Button type="submit" form="newStageForm">Сохранить</Button>
        <Button variant="outline" @click="emits('close')">Отменить</Button>
      </div>
    </CardFooter>
  </Card>
</template>