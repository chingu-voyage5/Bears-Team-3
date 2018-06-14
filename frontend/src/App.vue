<template>
  <div id="app">
    <h1>Hello World</h1>
    <h2>Bears-Team-3 :)</h2>
    <p>{{ currentCount }}</p>
    <button v-on:click.prevent="onIncreaseClick">Increase Counter</button>
  </div>
</template>

<script>
export default {
  name: 'app',
  data() {
    return {
      currentCount: 0,
    };
  },
  methods: {
    onIncreaseClick() {
      const headers = { 'content-type': 'application/json' };
      const options = { method: 'POST', headers };
      fetch('/api/counters', options).then(res => res.json()).then(newCount => this.currentCount = newCount.number_count);
    }
  },
  mounted() {
    fetch('/api/counters').then(res => res.json()).then(count => this.currentCount = count.number_count);
  },
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
