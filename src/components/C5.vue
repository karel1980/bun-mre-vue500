<script setup>
import { ref } from "vue"
const count = ref(5)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-5 m-5">
    <button class="btn btn-primary text-6xl" @click="count++">Component 5: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-2; }
</style>
