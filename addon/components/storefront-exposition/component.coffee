`import Ember from 'ember'`
`import layout from './template'`

StorefrontExpositionComponent = Ember.Component.extend
  layout: layout
  classNames: ["storefront-exposition"]
  ctaClass: "android-link storefront-exposition__cta-link mdl-typography--font-light"
  position: "top"

`export default StorefrontExpositionComponent`
