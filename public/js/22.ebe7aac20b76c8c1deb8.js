webpackJsonp([22],{

/***/ 194:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
var normalizeComponent = __webpack_require__(1)
/* script */
var __vue_script__ = __webpack_require__(479)
/* template */
var __vue_template__ = __webpack_require__(480)
/* template functional */
var __vue_template_functional__ = false
/* styles */
var __vue_styles__ = null
/* scopeId */
var __vue_scopeId__ = null
/* moduleIdentifier (server only) */
var __vue_module_identifier__ = null
var Component = normalizeComponent(
  __vue_script__,
  __vue_template__,
  __vue_template_functional__,
  __vue_styles__,
  __vue_scopeId__,
  __vue_module_identifier__
)
Component.options.__file = "resources\\assets\\js\\dashboard\\modules\\product\\Product.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-3a651856", Component.options)
  } else {
    hotAPI.reload("data-v-3a651856", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 479:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
  value: true
});
//
//
//
//
//
//
//
//
//
//

exports.default = {
  data: function data() {
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
      }]
    };
  },

  methods: {
    product: function product(value) {
      return value.title;
    }
  }
};

/***/ }),

/***/ 480:
/***/ (function(module, exports, __webpack_require__) {

var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "div",
    { staticClass: "row" },
    [
      _c(
        "vue-table",
        {
          attrs: {
            title: _vm.$t("page.products"),
            fields: _vm.fields,
            "api-url": "product",
            "show-paginate": ""
          }
        },
        [
          _c(
            "template",
            { slot: "buttons" },
            [
              _c(
                "router-link",
                {
                  staticClass: "btn btn-sm btn-success",
                  attrs: { to: { name: "dashboard.product.create" } }
                },
                [_vm._v(_vm._s(_vm.$t("page.create")))]
              )
            ],
            1
          )
        ],
        2
      )
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true
module.exports = { render: render, staticRenderFns: staticRenderFns }
if (false) {
  module.hot.accept()
  if (module.hot.data) {
    require("vue-hot-reload-api")      .rerender("data-v-3a651856", module.exports)
  }
}

/***/ })

});