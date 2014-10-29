if Meteor.isClient

  # counter starts at 0
  Session.setDefault "counter", 0

  Template.registerHelper 'g', (key) -> Session.get(key)
  Template.registerHelper 's', (key, value) -> Session.set(key, value)

  window.h = Blaze._globalHelpers

if Meteor.isServer
  Meteor.startup ->


# code to run on server at startup
