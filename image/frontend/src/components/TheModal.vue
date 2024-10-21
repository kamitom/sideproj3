<template>
  <div>
    <button @click="showModal = true">
      <TheIcon icon="favorite" />
      Show Modal
    </button>
    <teleport to="body">
      <div v-if="showModal" class="modal">
        <div class="backdrop"></div>
        <div class="modalContent">
          <button class="closeBtn" @click="showModal = false">
            <TheIcon icon="close" />
          </button>
          <slot></slot>
        </div>
      </div>
    </teleport>
  </div>
</template>

<script setup>
  import TheIcon from './TheIcon.vue';
  import { ref } from 'vue';

  const showModal = ref(false);
</script>

<style scoped>
  .modal {
    position: fixed;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    display: grid;
    place-items: center;
  }

  .backdrop {
    background: rgba(0, 0, 0, 0.56);
    position: absolute;
    width: 100%;
    height: 100%;
    left: 0;
    top: 0;
  }

  .modalContent {
    position: relative;
    background: white;
    border-radius: 52px;
    overflow: hidden;
  }

  .closeBtn {
    position: absolute;
    background: none;
    border: none;
    right: 14px;
    top: 10px;
  }

  .closeBtn svg {
    width: 54px;
    height: 54px;
  }

</style>