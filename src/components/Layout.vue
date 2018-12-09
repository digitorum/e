<template>
  <div :class="$style.layout">
    <header>
      <ul>
        <li>
          <router-link :to="{ name: 'main' }">
            Список записей
          </router-link>
        </li>
        <li>
          <router-link :to="{ name: 'add' }">
            Добавить запись
          </router-link>
        </li>
      </ul>
    </header>
    <div :class="$style.content">
      <slot></slot>
    </div>
  </div>
</template>

<script lang="coffee">
  export default
    name: 'Layout'
</script>

<style module>

  .layout {
    padding: 0;
    margin: 0;
  }

  .layout header {
    height: 50px;
    background-color: #3f3b3c;
    padding: 14px 0 0 0;
    box-sizing: border-box;
  }

  .layout header ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
  }

  .layout header ul li {
    display: inline;
    margin: 0 0 0 14px
  }

  .layout header ul li a {
    font-size: 17px;
    line-height: 17px;
    color: #fff;
  }

  .content {
    padding: 14px 14px 0 14px;
    box-sizing: border-box;
  }
  
</style>
