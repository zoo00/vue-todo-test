<template lang="pug">
.task-foot.panel-block
  button.button.is-danger(@click="removeAll") チェックしたタスクを削除
</template>

<script lang="ts">
export default {
  name: 'TaskFoot',
  methods: {
    removeAll() {
      this.$emit('removeAll')
    }
  }

}
</script>

<style lang="sass" scoped>
@import 'styles/main/vue'
</style>
