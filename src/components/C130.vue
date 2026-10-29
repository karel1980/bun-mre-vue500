<script setup>
import { ref } from "vue"
const count = ref(130)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-10 m-2">
    <button class="btn btn-primary text-5xl" @click="count++">Component 130: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-3; }
</style>
