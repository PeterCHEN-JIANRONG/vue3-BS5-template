<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png" />
    <h1>Vue3、BS5 樣板</h1>
    <div>
      <button type="button" class="btn btn-primary me-1">Primary</button>
      <button type="button" class="btn btn-secondary me-2">Secondary</button>
      <button type="button" class="btn btn-success me-3">Success</button>
      <button type="button" class="btn btn-danger me-4">Danger</button>
      <button type="button" class="btn btn-warning me-5">Warning</button>
      <button type="button" class="btn btn-info me-6">Info</button>
      <button type="button" class="btn btn-light me-7">Light</button>
      <button type="button" class="btn btn-dark">Dark</button>
    </div>
    <ul class="fs-1 d-flex gap-3">
      <li><i class="bi bi-alarm"></i></li>
      <li><i class="bi bi-arrow-down-circle"></i></li>
      <li><i class="bi bi-arrow-through-heart-fill"></i></li>
      <li><i class="bi bi-badge-4k-fill"></i></li>
    </ul>

    <HelloWorld msg="Welcome to Your Vue.js App" />
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue';

export default {
  name: 'Home',
  components: {
    HelloWorld,
  },
};
</script>
