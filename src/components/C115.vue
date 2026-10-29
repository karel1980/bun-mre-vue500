<script setup>
import { ref } from "vue"
const count = ref(115)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-7 m-3">
    <button class="btn btn-primary text-8xl" @click="count++">Component 115: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-4; }
</style>
