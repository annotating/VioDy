`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'storefront-products', 'Integration | Component | storefront products', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{storefront-products}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#storefront-products}}
      template block text
    {{/storefront-products}}
  """

  assert.equal @$().text().trim(), 'template block text'
