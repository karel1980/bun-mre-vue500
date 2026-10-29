<script setup>
import { ref } from "vue"
const count = ref(14)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-2 m-6">
    <button class="btn btn-primary text-6xl" @click="count++">Component 14: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-3; }
</style>
