<template>
  <div>
    <NavBar />
    <router-view></router-view>
  </div>

</template>

<script setup>
  import "./assets/base.css";
  import NavBar from "./components/NavBar.vue";

</script>


<style scoped>
  .header {
    height: 80px;
    box-shadow: 0px 4px 24px rgba(0, 0, 0, 0.08);
  }
</style>
