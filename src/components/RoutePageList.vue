<template>
  <Layout>
    <NotesList
      :notes="notesList"
    />
  </Layout>
</template>

<script lang="coffee">
  import store from '../store/store.coffee'
  import Layout from './Layout.vue'
  import NotesList from './NotesList.vue'

  export default
    name: 'RoutePageList'
    components: {
      Layout
      NotesList
    }
    data: () -> 
      state: store.state
    computed:
      notesList: () -> this.state.notesList
        
</script>
