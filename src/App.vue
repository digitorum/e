<template>
  <div id="app">
    <router-view />
  </div>
</template>

<script lang="coffee">
  import moment from 'moment'

  moment.locale 'ru'

  export default 
    name: 'App'
</script>

<style>
  body, html, #app {
    height: 100%;
    padding: 0px;
    margin: 0px;
  }
</style>
