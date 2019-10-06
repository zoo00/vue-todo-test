<template lang="pug">
.task-input.panel-block
  .field.has-addons
    .control
      input.input(type="text")
    .control
      button.button.is-primary 追加
</template>

<script lang="ts">
import TaskItem from 'scripts/components/TaskItem.vue'

export default {
  name: 'Index',
  components: {
    TaskItem,
  },
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
