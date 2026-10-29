<script setup>
import { ref } from "vue"
const count = ref(103)
</script>

<template>
  <div class="card bg-base-100 shadow-xl p-7 m-7">
    <button class="btn btn-primary text-5xl" @click="count++">Component 103: {{ count }}</button>
  </div>
</template>

<style scoped>
@reference "../style.css";
.card { @apply rounded-box border-4; }
</style>
