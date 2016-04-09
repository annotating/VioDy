`import DS from 'ember-data'`
`import {ActiveModelAdapter} from 'active-model-adapter'`
`import ENV from '../config/environment'`

ApplicationAdapter = ActiveModelAdapter.extend
  host: ENV.host
  namespace: ENV.namespace
  headers:
    "X-Spree-Token": ENV.spreeToken

`export default ApplicationAdapter`