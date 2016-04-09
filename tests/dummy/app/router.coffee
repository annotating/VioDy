`import Ember from 'ember'`
`import config from './config/environment'`
`import {DSL} from 'autox'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  {namespace, model, collection, form, view} = DSL.import @

  collection "products"
  collection "instructors"
  view "contact"
  namespace "assets", ->
    view "requirements"
    view "expositions"
    view "textbase-products"
  namespace "admin", ->
    collection "products", ->
      form "new"
    model "product", ->
      form "edit"
    collection "instructors", ->
      form "new"
    model "instructor", ->
      form "edit"


`export default Router`