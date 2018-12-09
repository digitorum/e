<template>
  <div :class="$style.note">
    <a>@note</a>
    <span>{{ date }}</span>
    <slot v-for="(chunk, index) in text">
      <p :key="index">{{ chunk }}</p>
    </slot>
  </div>
</template>

<script lang="coffee">
  import moment from 'moment'

  export default
    name: 'Note'
    props:
      note:
        type: Object
        required: true
    computed:
      date: () -> moment(this.note.date).format 'DD MMMM YYYY'
      text: () -> this.note.text.split /\n/g
</script>

<style module>

  .note {
    color: #657786;
    margin: 0 0 14px 0;
    border-bottom: 1px dotted #d6d6d6;
  }

  .note span {
    font-size: 14px;
  }

  .note span::before {
    content: "\00b7";
    padding: 0 7px 0 7px;
  }
  
  .note p {
    margin: 7px 0 7px 0px;
    font-size: 14px;
    color: #000;
  }


</style>