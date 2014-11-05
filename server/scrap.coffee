$ = Npm.require('cheerio')
Meteor.methods
  scrap: (url, callback) ->
    result = Meteor.http.get(url)
    # callback(result.content)
    # result
    callback($(result.content))
