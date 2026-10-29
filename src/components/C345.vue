<script setup>
import { ref } from "vue"
const count = ref(345)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-9 m-1">
    <button class="btn btn-primary text-4xl" @click="count++">Component 345: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-2; }
</style>
