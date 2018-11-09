export default [{
  path: 'products',
  component: () => import('js/App.vue'),
  children: [{
    path: '/',
    name: 'dashboard.product',
    component: () => import('./Product')
  }, {
    path: 'create',
    name: 'dashboard.product.create',
    component: () => import('./Create')
  }, {
    path: ':id/edit',
    name: 'dashboard.product.edit',
    component: () => import('./Edit')
  }]
}]