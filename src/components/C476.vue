<script setup>
import { ref } from "vue"
const count = ref(476)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-8 m-4">
    <button class="btn btn-primary text-9xl" @click="count++">Component 476: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-1; }
</style>
