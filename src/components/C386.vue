<script setup>
import { ref } from "vue"
const count = ref(386)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-2 m-2">
    <button class="btn btn-primary text-9xl" @click="count++">Component 386: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-3; }
</style>
