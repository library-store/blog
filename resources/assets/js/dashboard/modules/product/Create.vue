<template>
  <vue-form :title="$t('form.create_product')">
    <template slot="buttons">
      <router-link :to="{ name: 'dashboard.product' }" class="btn btn-sm btn-secondary" exact>{{ $t('form.back') }}</router-link>
    </template>
    <template slot="content">
      <product-form></product-form>
    </template>
  </vue-form>
</template>

<script>
import ProductForm from './Form'

export default {
  components: { ProductForm },
}
</script>