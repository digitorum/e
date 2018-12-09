import Vue from 'vue'
import App from './App.vue'
import Router from './components/Router.vue'

Vue.config.productionTip = false

new Vue
  el: '#vue-app'
  router: Router
  render: (h) -> h App
