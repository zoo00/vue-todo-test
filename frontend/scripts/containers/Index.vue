<template lang="pug">
#app
  .wrapper.columns.is-centered
    .column.is-half
      nav.panel
        TaskHead
        TaskInput(@add="onAddClicked")
        TaskItem(:item="item" :key="index" v-for="(item, index) in items" @remove="onRemoveClicked")
        TaskFoot
</template>

<script lang="ts">
import TaskHead from 'scripts/components/TaskHead.vue'
import TaskItem from 'scripts/components/TaskItem.vue'
import TaskInput from 'scripts/components/TaskInput.vue'
import TaskFoot from 'scripts/components/TaskFoot.vue'

export default {
  name: 'Index',
  data() {
    return {
      items: []
    }
  },
  components: {
    TaskHead,
    TaskItem,
    TaskInput,
    TaskFoot,
  },
  methods: {
    onAddClicked (newItem: String) {
      this.items.push(newItem);
    },
    onRemoveClicked (id: number) {
      this.items.splice(id, 1);
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
