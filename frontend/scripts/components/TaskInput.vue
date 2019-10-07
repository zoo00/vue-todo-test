<template lang="pug">
  .task-input.panel-block
    .field.has-addons
      .control
        input.input(type="text" v-model="todo")
      .control
        button.button.is-primary(@click="add") 追加
</template>

<script lang="ts">
  import TaskItem from 'scripts/components/TaskItem.vue'

  export default {
    name: 'Index',
    components: {
      TaskItem,
    },
    data() {
      return {
        todo: ""
      }
    },
    methods: {
      add() {
        this.$emit('add', this.todo)
      }
    }
  }
</script>

<style lang="sass" scoped>
  @import 'styles/main/vue'
  #app
    height: 100vh

    .wrapper
      display: flex
      align-items: center
      height: 100%
</style>
