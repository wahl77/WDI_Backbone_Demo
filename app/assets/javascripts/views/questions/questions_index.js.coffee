class WdiBackboneDemo.Views.QuestionsIndex extends Backbone.View
  
  # Behind the scene, also have a element called el which initially is nothing (an empty div)

  template: JST['questions/index']  # This is setting the object

  render: ->                        # This is similar to render questions/index
    $(@el).html(@template(questions: "Look at the questions"))        # @ is similar to this
    this                            # @template is equivalent to WdiBackboneDemo.Views.QuestionsIndex.template
                                    # @el is backbone magic

                                    # We return 'this' afterwards (line 9) to retun the html of the element, equivalent to WdiBackboneDemo.View.QuestionsIndex


    
