`import Ember from 'ember'`
Route = Ember.Route.extend
  model: ->
    @store.findAll "instructor"
`export default Route`