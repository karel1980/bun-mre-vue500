<script setup>
import { ref } from "vue"
const count = ref(205)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-1 m-5">
    <button class="btn btn-primary text-8xl" @click="count++">Component 205: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-2; }
</style>
