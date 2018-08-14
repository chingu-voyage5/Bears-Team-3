<template src="./Organization.html"></template>

<style scoped lang="css">
  @import 'Organization.css'
</style>

<script>
  export default {
    data: function() {
      return {
        organization: {},
      };
    },
    mounted: function () {
      fetch(`/api/organizations/${this.$route.params.id}`)
        .then(res => res.json())
        .then(data => this.organization = data)
    },
  }
</script>
