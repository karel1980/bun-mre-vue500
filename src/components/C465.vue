<script setup>
import { ref } from "vue"
const count = ref(465)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-9 m-1">
    <button class="btn btn-primary text-7xl" @click="count++">Component 465: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-2; }
</style>
