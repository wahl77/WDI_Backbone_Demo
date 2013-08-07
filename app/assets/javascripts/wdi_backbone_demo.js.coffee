window.WdiBackboneDemo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    new WdiBackboneDemo.Routers.Questions # This comes form routers folder
    Backbone.history.start()              # To match what is in url bar

$(document).ready ->
  WdiBackboneDemo.initialize()
