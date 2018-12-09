<template>
  <div>
    <slot v-if="notesList.length > 0" v-for="note in notesList">
      <Note :note="note"/>
    </slot>
    <slot v-if="notesList.length == 0">
      <p :class="$style.empty">Не добавлено ни одной записи</p>
    </slot>
  </div>
</template>

<script lang="coffee">
  import Note from './Note.vue'

  export default
    name: 'NotesList'
    components: {
      Note
    }
    props:
      notes:
        type: Array
    computed:
      notesList: () -> 
        this.notes || []
</script>

<style module>

  .empty {
    color: #657786;
  }

</style>