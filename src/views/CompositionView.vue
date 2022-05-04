<template>
  <div class="container">
    <h1>Composition 組合式 API 練習</h1>
    <p>
      {{ text }}
    </p>
    <div class="row row-cols-2 g-3 mb-3">
      <div class="col" v-for="item in products" :key="item.title">
        <CardBlock :title="item.title" :imgUrl="item.imgUrl" />
      </div>
    </div>
    <div class="row row-cols-3 g-3">
      <div class="col" v-for="item in users" :key="item.title">
        <CardBlock :title="`${item.name}`" :imgUrl="item.imgUrl" :content="item.email" />
      </div>
    </div>
  </div>
</template>

<script setup>
import {
  ref, onMounted, inject, computed,
} from 'vue';
import CardBlock from '@/components/CardBlock.vue';

const data = [
  {
    title: '沙拉',
    imgUrl:
      'https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  },
  {
    title: '美食',
    imgUrl:
      'https://images.unsplash.com/photo-1606787366850-de6330128bfc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  },
  {
    title: '輕食早餐',
    imgUrl:
      'https://images.unsplash.com/photo-1496412705862-e0088f16f791?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  },
];
const axios = inject('axios'); // inject axios
const text = ref('今天想吃甚麼？');
const products = ref([]);
const randomData = ref({});

// methods
function getProducts() {
  products.value = data;
}

function getRanDomUser() {
  axios
    .get('https://randomuser.me/api/?results=5')
    .then((res) => {
      console.log(res.data);
      randomData.value = res.data;
    })
    .catch((err) => {
      console.log(err);
    });
}

// computed
const users = computed(() => {
  const items = randomData.value.results?.map((item) => ({
    name: `${item.name.title}.${item.name.first} ${item.name.last}`,
    imgUrl: item.picture.large,
    email: item.email,
  }));
  return items;
});

onMounted(() => {
  getProducts();
  getRanDomUser();
});
</script>
