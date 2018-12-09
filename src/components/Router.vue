<script lang="coffee">
  import Vue from 'vue'
  import Router from 'vue-router'
  import RoutePageList from './RoutePageList'
  import RoutePageAdd from './RoutePageAdd'

  Vue.use Router

  export routes =
    main: '/'
    add: '/add'

  export default new Router
    base: '/'
    #mode: 'history'
    routes: [
      (
        path: routes.main
        name: 'main'
        component: RoutePageList
      ),
      (
        path: routes.add
        name: 'add'
        component: RoutePageAdd
      )
    ]
</script>