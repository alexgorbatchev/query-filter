chai         = require 'chai'
expect       = chai.expect
queryFilters = require '../query-filter.js'

describe 'queryFilters', ->
  it 'removes matching get parameters', ->
    url = 'http://localhost?param1=1&param2=1&param3&param4'
    expected = 'http://localhost?param4='
    filters = ['param[23]', /param1/]
    expect(queryFilters url, filters).to.equal expected

  it 'removes all parameters', ->
    url = 'http://localhost?param1=1&param2=1&param3&param4'
    expected = 'http://localhost'
    filters = [/param\d/]
    expect(queryFilters url, filters).to.equal expected

  it 'does not do anything when there are no get parameters', ->
    url = 'http://localhost/test'
    expected = 'http://localhost/test'
    filters = [/param[23]/, /param1/]
    expect(queryFilters url, filters).to.equal expected
