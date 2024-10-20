<template>
  <div>
    <button @click="showModal = true">
      <TheIcon icon="comment" />
      Show Modal
    </button>
    <teleport to="body">
      <div v-if="showModal" class="modal">
        <!-- <p>This is a modal!</p> -->
        <pre class="postDesc">
          這是我的照片,希望大家都喜歡😍
        </pre>
        <button @click="showModal = false">
          <TheIcon icon="close" />
        </button>
      </div>
    </teleport>
  </div>
</template>

<script setup>
  import { ref } from 'vue';
  import TheIcon from './TheIcon.vue';

  const showModal = ref(true);
</script>

<style>
  .modal {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background: white;
    padding: 1em;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    width: 60vw;
    height: 60vh;
  }
</style>
