<template>
  <div id="app">
    <app-header></app-header>
    <router-view/>
    <app-footer></app-footer>
  </div>
</template>

<script>
export default {
  name: 'App'
};
</script>

<style>
@import url('https://fonts.googleapis.com/css?family=Dosis');

#app {
  font-family: 'Dosis', sans-serif;;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
