<template>
  <div class="card">
    <img :src="imgUrl" class="card-img-top" alt="..." />
    <div class="card-body">
      <h5 class="card-title">{{ title }}</h5>
      <p class="card-text">
        {{ content }}
      </p>
      <a href="#" class="btn btn-primary">Go somewhere</a>
    </div>
  </div>
</template>
<script setup>
defineProps({
  title: {
    type: String,
    default() {
      return '';
    },
  },
  imgUrl: {
    type: String,
    default:
      'https://images.unsplash.com/photo-1584824486509-112e4181ff6b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  },
  content: {
    type: String,
    default: '',
  },
});
</script>
