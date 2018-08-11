<template src="./Organizations.html"></template>

<style scoped lang="css">
  @import 'Organizations.css'
</style>

<script>
  export default {
    data: function() {
      return {
        organizations: []
      };
    },
    mounted: function () {
      fetch('/api/organizations')
        .then(res => res.json())
        .then(data => this.organizations = data);
    }
  }
</script>
