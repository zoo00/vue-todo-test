<template lang="pug">
.task-item.panel-block
  input(type="checkbox")
  | たすく
  button.button.is-danger.is-small.is-outlined(type="button") 削除
</template>

<script lang="ts">
export default {
  name: 'TaskItem',
}
</script>

<style lang="sass" scoped>
@import 'styles/main/vue'
</style>
