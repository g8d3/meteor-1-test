$ = Npm.require('cheerio')
Meteor.methods
  scrap: (url) ->
    result = Meteor.http.get(url)
    result.content
