`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'storefront-textbase-card', 'Integration | Component | storefront textbase card', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{storefront-textbase-card}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#storefront-textbase-card}}
      template block text
    {{/storefront-textbase-card}}
  """

  assert.equal @$().text().trim(), 'template block text'
