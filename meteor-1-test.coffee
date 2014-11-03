if Meteor.isClient

  AutoForm.debug()

  # counter starts at 0
  Session.setDefault "counter", 0
  Session.setDefault "book", Schemas.Books.find().fetch()[0]

  Template.hello.helpers
    a: -> Session.get 'book'

  Template.registerHelper 'e', (code) -> eval code
  Template.registerHelper 'g', (key) -> Session.get(key)
  Template.registerHelper 's', (key, value) -> Session.set(key, value)

  window.h = Blaze._globalHelpers

if Meteor.isServer
  Meteor.startup ->


# code to run on server at startup
