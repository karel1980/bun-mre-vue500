<script setup>
import { ref } from "vue"
const count = ref(12)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-0 m-4">
    <button class="btn btn-primary text-4xl" @click="count++">Component 12: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-1; }
</style>
