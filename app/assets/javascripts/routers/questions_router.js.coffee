class WdiBackboneDemo.Routers.Questions extends Backbone.Router
  routes: 
    '': 'index'
    'questions/:id': 'show' # Example: http://localhost:3000/#questions/123

  initialize: ->
    @collection = new WdiBackboneDemo.Collections.Questions() 
    @collection.fetch(reset: true)

  index: -> 
    alert "You are in the index Action"
    view = new WdiBackboneDemo.Views.QuestionsIndex(collection: @collection)
    $('#container').html(view.render().el)
    # alert "Waiting"... # Uncomment to see the problems with the lag between the showing and getting.

  show: (id) -> # Show takes the id argurment 
    alert "You are showing Question #{id}"
