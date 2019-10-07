<template lang="pug">
  p.task-head.panel-heading
    font-awesome-icon(icon="coffee")
    | タスクを管理しよう
</template>

<script lang="ts">
  export default {
    name: 'TaskHead',
  }
</script>

<style lang="sass" scoped>
  @import 'styles/main/vue'
</style>
