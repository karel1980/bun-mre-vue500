<script setup>
import { ref } from "vue"
const count = ref(126)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-6 m-6">
    <button class="btn btn-primary text-1xl" @click="count++">Component 126: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-3; }
</style>
