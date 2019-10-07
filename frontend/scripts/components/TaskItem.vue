<template lang="pug">
  .task-item.panel-block
    input(type="checkbox" v-model="isChecked" @change="checked")
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
    data() {
      return {
        isChecked: false
      }
    },
    methods: {
      remove() {
        this.$emit('remove', this.$vnode.key)
      },
      checked() {
        this.$emit('checked', this.isChecked, this.$vnode.key)
      }
    }
  }
</script>

<style lang="sass" scoped>
  @import 'styles/main/vue'
</style>
