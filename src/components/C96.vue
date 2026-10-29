<script setup>
import { ref } from "vue"
const count = ref(96)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-0 m-0">
    <button class="btn btn-primary text-7xl" @click="count++">Component 96: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-1; }
</style>
