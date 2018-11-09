<template>
  <vue-form :title="$t('form.edit_product')">
    <template slot="buttons">
      <router-link :to="{ name: 'dashboard.product' }" class="btn btn-sm btn-secondary" exact>{{ $t('form.back') }}</router-link>
    </template>
    <template slot="content">
      <product-form :article="product"></product-form>
    </template>
  </vue-form>
</template>

<script>
import ProductForm from './Form'

export default {
  components: { ProductForm },
  data() {
    return {
      product: undefined
    }
  },
  created() {
    this.$http.get('product/' + this.$route.params.id + '/edit?include=category,tags')
      .then((response) => {
        this.product = response.data.data
      })
  },
}
</script>
