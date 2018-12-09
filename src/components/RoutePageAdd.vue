<template>
  <Layout>
    <form>
      <div :class="$style.group">
        <label>Дата в формате "дд.мм.гггг": <span v-if="dateValidation">{{ dateValidation }}</span></label>
        <input v-model="date" @blur="onDateBlur" @keyup="onDateChange" maxlength="10">
      </div>
      <div :class="$style.group">
        <label>Текст не более 140 символов: <span v-if="textValidation">{{ textValidation }}</span></label>
        <textarea v-model="text" @blur="onTextBlur" @keyup="onTextChange" maxlength="140"></textarea>
      </div>
      <button :disabled="isFormInValid" @click="createNote">Создать</button>
    </form>
  </Layout>
</template>

<script lang="coffee">
  import moment from 'moment'
  import state from '../store/store.coffee'
  import Layout from './Layout.vue'

  export default
    name: 'RoutePageAdd'
    components: { 
      Layout 
    }
    data: () -> 
      date: ''
      text: ''
      dateValidation: ''
      textValidation: ''
    computed:
      datetime: () -> this.date.split('.').reverse().join('-')
      isFormInValid: () -> this.isCorrect() isnt true
    methods:
      isDateValid: () -> this.date.match(/^[0-9]{2}.[0-9]{2}.[0-9]{4}$/) and moment(this.datetime).isValid()
      isTextValid: () -> this.text isnt ''
      isCorrect: () -> this.isDateValid() and this.isTextValid()
      onDateBlur: () ->
        this.dateValidation = if this.isDateValid() isnt true then 'Неверный формат даты' else ''
      onDateChange: () ->
        this.dateValidation = ''
      onTextBlur: () ->
        this.textValidation = if this.isTextValid() isnt true then 'Обязательное поле' else ''
      onTextChange: () ->
        this.textValidation = ''
      createNote: (e) ->
        e.preventDefault()
        state.addNote(this.datetime, this.text)
        this.$router.push({ name: 'main' })

</script>

<style module>
  
  form {
    width: 50%;
  }

  form .group {
    margin: 0 0 14px 0;
  }

  form .group label {
    display: block;
    color: #888888;
    font-size: 14px;
    margin: 0 0 7px 0;
  }

  form .group label span {
    color: #bd1616;
  }

  form .group input,
  form .group textarea {
    width: 100%;
    height: 25px;
    font-size: 14px;
    border-style: solid;
    border-width: 1px;
    border-color: #888888;
    padding: 2px;
  }

  form .group textarea {
    height: 150px;
  }

  form button {
    font-size: 14px;
    width: 100px;
    height: 25px;
    border-radius: 3px;
    box-shadow: none;
    border-style: none;
  }

</style>