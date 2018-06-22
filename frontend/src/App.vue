<template>
  <div id="app">
    <app-header></app-header>
    <router-view/>
    <!-- <app-footer></app-footer> -->
  </div>
</template>

<script>
export default {
  name: 'App'
};
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
