webpackJsonp([21],{

/***/ 187:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
var normalizeComponent = __webpack_require__(1)
/* script */
var __vue_script__ = __webpack_require__(465)
/* template */
var __vue_template__ = __webpack_require__(466)
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
Component.options.__file = "resources\\assets\\js\\dashboard\\modules\\tag\\Tag.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-343ba2ac", Component.options)
  } else {
    hotAPI.reload("data-v-343ba2ac", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 465:
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
        name: 'tag',
        trans: 'table.tag'
      }, {
        name: 'title',
        trans: 'table.title'
      }, {
        name: 'meta_description',
        trans: 'table.meta_description'
      }, {
        name: 'created_at',
        trans: 'table.created_at'
      }, {
        name: '__actions',
        trans: 'table.action',
        titleClass: 'text-center',
        dataClass: 'text-center'
      }]
    };
  },

  methods: {
    tableActions: function tableActions(action, data) {
      var _this = this;

      if (action == 'edit-item') {
        this.$router.push({ name: 'dashboard.tag.edit', params: { id: data.id } });
      } else if (action == 'delete-item') {
        this.$http.delete('tag/' + data.id).then(function (response) {
          toastr.success('You delete the tag success!');

          _this.$emit('reload');
        }).catch(function (_ref) {
          var response = _ref.response;

          toastr.error(response.status + ' : Resource ' + response.statusText);
        });
      }
    }
  }
};

/***/ }),

/***/ 466:
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
            title: _vm.$t("page.tags"),
            fields: _vm.fields,
            "api-url": "tag",
            "show-paginate": ""
          },
          on: { "table-action": _vm.tableActions }
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
                  attrs: { to: { name: "dashboard.tag.create" } }
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
    require("vue-hot-reload-api")      .rerender("data-v-343ba2ac", module.exports)
  }
}

/***/ })

});