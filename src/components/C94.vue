<script setup>
import { ref } from "vue"
const count = ref(94)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-10 m-6">
    <button class="btn btn-primary text-5xl" @click="count++">Component 94: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-3; }
</style>
