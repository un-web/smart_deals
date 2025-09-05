<script setup lang="ts">

import type { Deals, DealStages } from '#build/$rstore-directus-models'
import { useToast } from '@/client/components/ui/toast/use-toast'
import { useForm } from "vee-validate"
import { toTypedSchema } from "@vee-validate/zod"
import { h } from "vue"
import type { ZodObject, ZodType } from 'zod'
import * as z from "zod"

const props = defineProps<{
  deal: Deals
}>()

const emits = defineEmits(['close'])
const { toast } = useToast()
const store = useStore()



const formSchema = toTypedSchema(z.object({
  deal: z.string(),
  // content: z.string().optional(),
  // contracter: z.string().optional(),
  short_desc: z.string().optional(),
  title: z.string().min(2).max(50),
}))

const { isFieldDirty, handleSubmit } = useForm({
  validationSchema: formSchema,
  initialValues: {
    deal: props.deal.id
  }
})


const onSubmit = handleSubmit((values) => {
  const v = {
    ...values,
    deal_id: props.deal.id,}
  store.DealStages.create(v).then((res) => {
    if (res) {
      toast({
        title: "You submitted the following values:",
        description: h("pre", { class: "mt-2 w-[340px] rounded-md bg-slate-950 p-4" }, h("code", { class: "text-white" }, JSON.stringify(values, null, 2))),
      })
      emits('close')
    }
  })
})

</script>
<template>
  <Card>
    <CardHeader>Новый этап</CardHeader>
    <CardContent>
        <form id="newStageForm" @submit="onSubmit" class="space-y-6">
          <FormField v-slot="{ componentField }" name="title">
            <FormItem>
              <FormLabel>Название этапа</FormLabel>
              <FormControl>
                <Input type="text" placeholder="Наименование этапа" v-bind="componentField" />
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
                <Input type="text" placeholder="Краткое описание" v-bind="componentField" />
              </FormControl>
              <!-- <FormDescription>
                This is your public display name.
              </FormDescription> -->
              <FormMessage />
            </FormItem>
          </FormField>
        </form>
    </CardContent>
    <CardFooter>
      <div class="flex gap-4">
        <Button type="submit" form="newStageForm">Сохранить</Button>
        <Button variant="outline" @click="emits('close')">Отменить</Button>
      </div>
    </CardFooter>
  </Card>
</template>
