<template src="./Index.html"></template>

<style scoped lang="css">
  @import 'Index.css'
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
