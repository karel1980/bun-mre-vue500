<script setup>
import { ref } from "vue"
const count = ref(197)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-5 m-5">
    <button class="btn btn-primary text-9xl" @click="count++">Component 197: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-2; }
</style>
