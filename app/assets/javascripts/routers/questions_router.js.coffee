class WdiBackboneDemo.Routers.Questions extends Backbone.Router
  routes: 
    '': 'index'
    'questions/:id': 'show' # Example: http://localhost:3000/#questions/123

  index: -> 
    alert "You are in the index Action"
    view = new WdiBackboneDemo.Views.QuestionsIndex()
    $('#container').html(view.render().el)

  show: (id) -> # Show takes the id argurment 
    alert "You are showing Question #{id}"
