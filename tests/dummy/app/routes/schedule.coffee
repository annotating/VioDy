`import Ember from 'ember'`
Route = Ember.Route.extend
  model: ->
    @store.findAll "product"
    
`export default Route`