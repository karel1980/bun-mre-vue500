<script setup>
import { ref } from "vue"
const count = ref(323)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-11 m-3">
    <button class="btn btn-primary text-9xl" @click="count++">Component 323: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-4; }
</style>
