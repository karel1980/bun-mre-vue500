<script setup>
import { ref } from "vue"
const count = ref(252)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-0 m-4">
    <button class="btn btn-primary text-1xl" @click="count++">Component 252: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-1; }
</style>
