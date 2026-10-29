<script setup>
import { ref } from "vue"
const count = ref(292)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-4 m-4">
    <button class="btn btn-primary text-5xl" @click="count++">Component 292: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-1; }
</style>
