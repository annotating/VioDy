`import Ember from 'ember'`
`import config from './config/environment'`
`import {DSL} from 'autox'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  {namespace, model, collection, form, view} = DSL.import @

  collection "instructors"
  view "schedule"
  view "contact"
  namespace "assets", ->
    view "expositions"
    view "textbase-products"
    view "minihero"
    view "grid-cards"
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