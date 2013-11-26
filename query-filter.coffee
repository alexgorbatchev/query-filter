url         = require 'url'
querystring = require 'querystring'

module.exports = (value, filters) ->
  urlInfo = url.parse value
  return value unless urlInfo.query

  params  = querystring.parse urlInfo.query
  filters[i] = new RegExp filter for filter, i in filters

  for k, v of params
    for regex in filters
      if regex.test k
        delete params[k]
        break

  urlInfo.search = '?' + querystring.stringify params
  url.format urlInfo
