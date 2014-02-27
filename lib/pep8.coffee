Pep8LinterView = require './pep8-view'

module.exports =
  pep8LinterView: null

  activate: (state) ->
    @pep8LinterView = new Pep8LinterView(state.pep8LinterViewState)

  deactivate: ->
    @pep8LinterView.destroy()

  serialize: ->
    pep8LinterViewState: @pep8LinterView.serialize()
