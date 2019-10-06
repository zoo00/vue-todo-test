<template lang="pug">
#app
  .wrapper.columns.is-centered
    .column.is-half
      nav.panel
        TaskHead
        TaskInput(@add="onAddClicked")
        TaskItem(
          :item="item"
          :key="index"
          v-for="(item, index) in items"
          @remove="onRemoveClicked"
          @checked="onChecked")
        TaskFoot(@removeAll="onRemoveAll")
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
      items: [],
      deleteItemIndexes: []
    }
  },
  components: {
    TaskHead,
    TaskItem,
    TaskInput,
    TaskFoot,
  },
  methods: {
    onAddClicked (newItem: string) {
      this.items.push(newItem);
    },
    onRemoveClicked (id: number) {
      this.items.splice(id, 1);
    },
    onChecked (isChecked: boolean, id: number) {
      if (isChecked){
        this.deleteItemIndexes.push(id);
      } else {
        this.deleteItemIndexes.splice(id, 1);
      }
    },
      onRemoveAll() {
      let newItems: string[] = [];
      this.items.forEach((name: string, index: number) => {
        if (!this.deleteItemIndexes.includes(index)) {
          newItems.push(name)
        }
      })
      this.items = newItems
      this.deleteItemIndexes = []
    }
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
