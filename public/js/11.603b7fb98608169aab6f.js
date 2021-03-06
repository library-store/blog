webpackJsonp([11],{

/***/ 191:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
var normalizeComponent = __webpack_require__(1)
/* script */
var __vue_script__ = __webpack_require__(473)
/* template */
var __vue_template__ = __webpack_require__(474)
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
Component.options.__file = "resources\\assets\\js\\dashboard\\modules\\user\\Create.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-0dc22f7e", Component.options)
  } else {
    hotAPI.reload("data-v-0dc22f7e", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 358:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
var normalizeComponent = __webpack_require__(1)
/* script */
var __vue_script__ = __webpack_require__(359)
/* template */
var __vue_template__ = __webpack_require__(360)
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
Component.options.__file = "resources\\assets\\js\\dashboard\\modules\\user\\Form.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-2964f749", Component.options)
  } else {
    hotAPI.reload("data-v-2964f749", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 359:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
  value: true
});

var _helper = __webpack_require__(24);

exports.default = {
  props: {
    user: {
      type: Object,
      default: function _default() {
        return {};
      }
    }
  },
  computed: {
    mode: function mode() {
      return this.user.id ? 'update' : 'create';
    }
  },
  methods: {
    onSubmit: function onSubmit() {
      var _this = this;

      var url = 'user' + (this.user.id ? '/' + this.user.id : '');
      var method = this.user.id ? 'patch' : 'post';

      this.$http[method](url, this.user).then(function (response) {
        toastr.success('You ' + _this.mode + 'd a new account information!');

        _this.$router.push({ name: 'dashboard.user' });
      }).catch(function (_ref) {
        var response = _ref.response;

        (0, _helper.stack_error)(response);
      });
    }
  }
}; //
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
//
//

/***/ }),

/***/ 360:
/***/ (function(module, exports, __webpack_require__) {

var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", { staticClass: "row" }, [
    _c(
      "form",
      {
        staticClass: "form col-md-5",
        attrs: { role: "form" },
        on: {
          submit: function($event) {
            $event.preventDefault()
            return _vm.onSubmit($event)
          }
        }
      },
      [
        _c("div", { staticClass: "form-group text-left" }, [
          _c("img", {
            staticClass: "rounded-circle",
            attrs: {
              src: _vm.user.avatar ? _vm.user.avatar : "/images/default.png",
              id: "avatar",
              width: "100",
              alt: _vm.user.name
            }
          })
        ]),
        _vm._v(" "),
        _c("div", { staticClass: "form-group" }, [
          _c("label", { attrs: { for: "name" } }, [
            _vm._v(_vm._s(_vm.$t("form.name")))
          ]),
          _vm._v(" "),
          _c("input", {
            directives: [
              {
                name: "model",
                rawName: "v-model",
                value: _vm.user.name,
                expression: "user.name"
              }
            ],
            staticClass: "form-control",
            attrs: {
              type: "text",
              id: "name",
              placeholder: _vm.$t("form.name"),
              disabled: _vm.user.id ? true : false
            },
            domProps: { value: _vm.user.name },
            on: {
              input: function($event) {
                if ($event.target.composing) {
                  return
                }
                _vm.$set(_vm.user, "name", $event.target.value)
              }
            }
          })
        ]),
        _vm._v(" "),
        _c("div", { staticClass: "form-group" }, [
          _c("label", { attrs: { for: "email" } }, [
            _vm._v(_vm._s(_vm.$t("form.email")))
          ]),
          _vm._v(" "),
          _c("input", {
            directives: [
              {
                name: "model",
                rawName: "v-model",
                value: _vm.user.email,
                expression: "user.email"
              }
            ],
            staticClass: "form-control",
            attrs: {
              type: "email",
              id: "email",
              placeholder: _vm.$t("form.email")
            },
            domProps: { value: _vm.user.email },
            on: {
              input: function($event) {
                if ($event.target.composing) {
                  return
                }
                _vm.$set(_vm.user, "email", $event.target.value)
              }
            }
          })
        ]),
        _vm._v(" "),
        _c("div", { staticClass: "form-group" }, [
          _c("label", { attrs: { for: "nickname" } }, [
            _vm._v(_vm._s(_vm.$t("form.nickname")))
          ]),
          _vm._v(" "),
          _c("input", {
            directives: [
              {
                name: "model",
                rawName: "v-model",
                value: _vm.user.nickname,
                expression: "user.nickname"
              }
            ],
            staticClass: "form-control",
            attrs: {
              type: "text",
              id: "nickname",
              placeholder: _vm.$t("form.nickname")
            },
            domProps: { value: _vm.user.nickname },
            on: {
              input: function($event) {
                if ($event.target.composing) {
                  return
                }
                _vm.$set(_vm.user, "nickname", $event.target.value)
              }
            }
          })
        ]),
        _vm._v(" "),
        _c("div", { staticClass: "form-group" }, [
          _c("label", { attrs: { for: "website" } }, [
            _vm._v(_vm._s(_vm.$t("form.website")))
          ]),
          _vm._v(" "),
          _c("input", {
            directives: [
              {
                name: "model",
                rawName: "v-model",
                value: _vm.user.website,
                expression: "user.website"
              }
            ],
            staticClass: "form-control",
            attrs: {
              type: "text",
              id: "website",
              placeholder: _vm.$t("form.website")
            },
            domProps: { value: _vm.user.website },
            on: {
              input: function($event) {
                if ($event.target.composing) {
                  return
                }
                _vm.$set(_vm.user, "website", $event.target.value)
              }
            }
          })
        ]),
        _vm._v(" "),
        _c("div", { staticClass: "form-group" }, [
          _c("label", { attrs: { for: "description" } }, [
            _vm._v(_vm._s(_vm.$t("form.description")))
          ]),
          _vm._v(" "),
          _c("input", {
            directives: [
              {
                name: "model",
                rawName: "v-model",
                value: _vm.user.description,
                expression: "user.description"
              }
            ],
            staticClass: "form-control",
            attrs: {
              type: "text",
              id: "description",
              placeholder: _vm.$t("form.description")
            },
            domProps: { value: _vm.user.description },
            on: {
              input: function($event) {
                if ($event.target.composing) {
                  return
                }
                _vm.$set(_vm.user, "description", $event.target.value)
              }
            }
          })
        ]),
        _vm._v(" "),
        !_vm.user.id
          ? [
              _c("div", { staticClass: "form-group" }, [
                _c("label", { attrs: { for: "password" } }, [
                  _vm._v(_vm._s(_vm.$t("form.password")))
                ]),
                _vm._v(" "),
                _c("input", {
                  directives: [
                    {
                      name: "model",
                      rawName: "v-model",
                      value: _vm.user.password,
                      expression: "user.password"
                    }
                  ],
                  staticClass: "form-control",
                  attrs: {
                    type: "password",
                    id: "password",
                    placeholder: _vm.$t("form.password"),
                    name: "password"
                  },
                  domProps: { value: _vm.user.password },
                  on: {
                    input: function($event) {
                      if ($event.target.composing) {
                        return
                      }
                      _vm.$set(_vm.user, "password", $event.target.value)
                    }
                  }
                })
              ]),
              _vm._v(" "),
              _c("div", { staticClass: "form-group" }, [
                _c("label", { attrs: { for: "password_confirmation" } }, [
                  _vm._v(_vm._s(_vm.$t("form.confirm_password")))
                ]),
                _vm._v(" "),
                _c("input", {
                  directives: [
                    {
                      name: "model",
                      rawName: "v-model",
                      value: _vm.user.password_confirmation,
                      expression: "user.password_confirmation"
                    }
                  ],
                  staticClass: "form-control",
                  attrs: {
                    type: "password",
                    id: "password_confirmation",
                    placeholder: _vm.$t("form.confirm_password"),
                    name: "password_confirmation"
                  },
                  domProps: { value: _vm.user.password_confirmation },
                  on: {
                    input: function($event) {
                      if ($event.target.composing) {
                        return
                      }
                      _vm.$set(
                        _vm.user,
                        "password_confirmation",
                        $event.target.value
                      )
                    }
                  }
                })
              ])
            ]
          : _vm._e(),
        _vm._v(" "),
        _c("div", { staticClass: "form-group" }, [
          _c("label", { attrs: { for: "role" } }, [_vm._v("Role")]),
          _vm._v(" "),
          _c(
            "select",
            {
              directives: [
                {
                  name: "model",
                  rawName: "v-model",
                  value: _vm.user.role,
                  expression: "user.role"
                }
              ],
              staticClass: "form-control",
              attrs: { id: "role", name: "role" },
              on: {
                change: function($event) {
                  var $$selectedVal = Array.prototype.filter
                    .call($event.target.options, function(o) {
                      return o.selected
                    })
                    .map(function(o) {
                      var val = "_value" in o ? o._value : o.value
                      return val
                    })
                  _vm.$set(
                    _vm.user,
                    "role",
                    $event.target.multiple ? $$selectedVal : $$selectedVal[0]
                  )
                }
              }
            },
            [
              _c("option", { attrs: { value: "subscribe" } }, [
                _vm._v("Subscribe")
              ]),
              _vm._v(" "),
              _c("option", { attrs: { value: "teacher" } }, [
                _vm._v("Instructor")
              ]),
              _vm._v(" "),
              _c("option", { attrs: { value: "contributor" } }, [
                _vm._v("Contributor")
              ]),
              _vm._v(" "),
              _c("option", { attrs: { value: "editor" } }, [_vm._v("Editor")]),
              _vm._v(" "),
              _c("option", { attrs: { value: "administrator" } }, [
                _vm._v("Admin")
              ])
            ]
          )
        ]),
        _vm._v(" "),
        _c("div", { staticClass: "form-group" }, [
          _c(
            "button",
            { staticClass: "btn btn-primary", attrs: { type: "submit" } },
            [
              _vm._v(
                _vm._s(
                  _vm.user.id ? _vm.$t("form.edit") : _vm.$t("form.create")
                )
              )
            ]
          )
        ])
      ],
      2
    )
  ])
}
var staticRenderFns = []
render._withStripped = true
module.exports = { render: render, staticRenderFns: staticRenderFns }
if (false) {
  module.hot.accept()
  if (module.hot.data) {
    require("vue-hot-reload-api")      .rerender("data-v-2964f749", module.exports)
  }
}

/***/ }),

/***/ 473:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
  value: true
});

var _Form = __webpack_require__(358);

var _Form2 = _interopRequireDefault(_Form);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = {
  components: { UserForm: _Form2.default }
}; //
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

/***/ }),

/***/ 474:
/***/ (function(module, exports, __webpack_require__) {

var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "vue-form",
    { attrs: { title: _vm.$t("form.create_user") } },
    [
      _c(
        "template",
        { slot: "buttons" },
        [
          _c(
            "router-link",
            {
              staticClass: "btn btn-sm btn-secondary",
              attrs: { to: { name: "dashboard.user" }, exact: "" }
            },
            [_vm._v(_vm._s(_vm.$t("form.back")))]
          )
        ],
        1
      ),
      _vm._v(" "),
      _c("template", { slot: "content" }, [_c("user-form")], 1)
    ],
    2
  )
}
var staticRenderFns = []
render._withStripped = true
module.exports = { render: render, staticRenderFns: staticRenderFns }
if (false) {
  module.hot.accept()
  if (module.hot.data) {
    require("vue-hot-reload-api")      .rerender("data-v-0dc22f7e", module.exports)
  }
}

/***/ })

});