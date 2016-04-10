`import Ember from 'ember'`
`import layout from './template'`

StorefrontTextbaseProductComponent = Ember.Component.extend
  layout: layout
  classNames: ["mdl-list__item", "storefront-textbase-product", "mdl-shadow--4dp", "mdl-list__item--three-line"]
  tagName: "li"

  actions:
    cta: (model) ->
      @sendAction "checkout", model

`export default StorefrontTextbaseProductComponent`
