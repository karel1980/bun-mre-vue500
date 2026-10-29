<script setup>
import { ref } from "vue"
const count = ref(65)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-5 m-1">
    <button class="btn btn-primary text-3xl" @click="count++">Component 65: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-2; }
</style>
