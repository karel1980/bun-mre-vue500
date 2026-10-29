<script setup>
import { ref } from "vue"
const count = ref(366)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-6 m-6">
    <button class="btn btn-primary text-7xl" @click="count++">Component 366: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-3; }
</style>
