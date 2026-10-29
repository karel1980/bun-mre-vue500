<script setup>
import { ref } from "vue"
const count = ref(56)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-8 m-0">
    <button class="btn btn-primary text-3xl" @click="count++">Component 56: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-1; }
</style>
