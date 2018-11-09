<template>
  <div class="row">
    <vue-table :title="$t('page.products')" :fields="fields" api-url="product" show-paginate>
      <template slot="buttons">
        <router-link :to="{ name: 'dashboard.product.create' }" class="btn btn-sm btn-success">{{ $t('page.create') }}</router-link>
      </template>
    </vue-table>
  </div>
</template>

<script>
export default {
  data() {
    return {
      fields: [{
          name: 'id',
          trans: 'table.id',
          titleClass: 'width-5-percent text-center',
          dataClass: 'text-center'
        }, {
          name: 'product',
          trans: 'table.product_title',
          titleClass: 'text-center',
          dataClass: 'text-center',
          callback: 'product'
        }, {
          name: "ip",
          trans: 'table.ip'
        }, {
          name: 'clicks',
          trans: 'table.click_num'
        }, {
          name: 'created_at',
          trans: 'table.created_at'
        }
      ]
    };
  },
  methods: {
    product(value) {
      return value.title
    }
  }
}
</script>
