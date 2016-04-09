`import {ActiveModelSerializer} from 'active-model-adapter'`
`import _ from 'lodash/lodash'`
MetaKeys = ["count", "total_count", "current_page", "per_page", "pages"]
{pick} = _
ApplicationSerializer = ActiveModelSerializer.extend
  extractMeta: (store, modelClass, payload) ->
    meta = pick payload, MetaKeys
    delete payload[key] for key in MetaKeys
    meta
`export default ApplicationSerializer`