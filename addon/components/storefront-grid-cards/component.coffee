`import Ember from 'ember'`
`import layout from './template'`
`import {_x} from 'autox'`

{computed: {apply}} = _x

materialCellClass = ([desktop, tablet, phone]) ->
  "mdl-cell mdl-cell--#{desktop}-col mdl-cell--#{tablet}-col-tablet mdl-cell--#{phone}-col-phone"  

StorefrontGridCardsComponent = Ember.Component.extend
  layout: layout
  classNames: ["storefront-grid-cards"]
  classNameBindings: ["gridClass"]
  cardsPerRow: 3
  gridClass: "mdl-grid"
  cardClass: apply "cardsPerRow", (cardsPerRow) ->
    materialCellClass switch cardsPerRow
      when 1 then [12, 12, 12]
      when 2 then [6, 6, 12]
      when 3 then [4, 4, 6]
      when 4 then [3, 3, 6]
      when 6 then [2, 3, 6]
      else throw new Error """
      I don't know how to style #{cardsPerRow} cards per row,
      you can try setting your own `cardClass` attribute like so:

        {{storefront-grid-cards cardClass="your-own-classes"}}
      """


`export default StorefrontGridCardsComponent`
