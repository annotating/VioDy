`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'storefront-exposition', 'Integration | Component | storefront exposition', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{storefront-exposition}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#storefront-exposition}}
      template block text
    {{/storefront-exposition}}
  """

  assert.equal @$().text().trim(), 'template block text'
