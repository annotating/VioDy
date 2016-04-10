`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'storefront-grid-cards', 'Integration | Component | storefront grid cards', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{storefront-grid-cards}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#storefront-grid-cards}}
      template block text
    {{/storefront-grid-cards}}
  """

  assert.equal @$().text().trim(), 'template block text'
