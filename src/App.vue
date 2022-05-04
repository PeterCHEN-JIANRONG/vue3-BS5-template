<template>
  <div id="nav">
    <router-link to="/">Home</router-link> | <router-link to="/about">About</router-link> |
    <router-link to="/composition">CompositionAPI</router-link>
  </div>
  <router-view />
</template>

<style lang="scss">
@import './assets/stylesheets/all.scss';
</style>
