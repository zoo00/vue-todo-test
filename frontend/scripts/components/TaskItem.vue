<template lang="pug">
.task-item.panel-block
  input(type="checkbox")
  label
   | {{ item }}
  button.button.is-danger.is-small.is-outlined(type="button" @click="remove") 削除
</template>

<script lang="ts">
export default {
  name: 'TaskItem',
  props: {
    item: String
  },
  methods: {
    remove() {
      this.$emit('remove', this.$vnode.key)
    }
  }
}
</script>

<style lang="sass" scoped>
@import 'styles/main/vue'
</style>
