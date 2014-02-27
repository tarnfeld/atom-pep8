{View} = require 'atom'

module.exports =
class Pep8LinterView extends View
  @content: ->
    @div class: 'pep8 overlay from-top', =>
      @div "The Pep8Linter package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "pep8:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "Pep8LinterView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
