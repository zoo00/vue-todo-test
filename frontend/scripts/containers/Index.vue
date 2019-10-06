<template lang="pug">
#app
  .wrapper.columns.is-centered
    .column.is-half
      nav.panel
        TaskHead
        TaskInput
        TaskItem
        TaskFoot
</template>

<script lang="ts">
import TaskHead from 'scripts/components/TaskHead.vue'
import TaskItem from 'scripts/components/TaskItem.vue'
import TaskInput from 'scripts/components/TaskInput.vue'
import TaskFoot from 'scripts/components/TaskFoot.vue'

export default {
  name: 'Index',
  components: {
    TaskHead,
    TaskItem,
    TaskInput,
    TaskFoot,
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
