class WdiBackboneDemo.Views.QuestionsIndex extends Backbone.View
  
  # Behind the scene, also have a element called el which initially is nothing (an empty div)

  template: JST['questions/index']  # This is setting the object

  initialize: ->
    @collection.on('reset', @render, this) # To overcome the time it takes to get the data. Otherwise, 0 comes back....

  render: ->                        # This is similar to render questions/index
    $(@el).html(@template(questions: @collection))        # @ is similar to this
    this                            # @template is equivalent to WdiBackboneDemo.Views.QuestionsIndex.template
                                    # @el is backbone magic

                                    # We return 'this' afterwards (line 9) to retun the html of the element, equivalent to WdiBackboneDemo.View.QuestionsIndex


    
