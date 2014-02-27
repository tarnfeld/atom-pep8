{$$, Point, SelectListView} = require 'atom'

module.exports =
class Pep8ErrorsView extends SelectListView

    initialize: ->
        @addClass('pep8-errors overlay from-top')

    destroy: ->
        @cancel()
        @remove()

        atom.workspaceView.off "keydown.pep8"

    viewForItem: ({line, position, type, message}) ->
        lineText = @editor().getTextInBufferRange([[line], [line+1]])

        $$ ->
            @li class: "two-lines", =>
                @div type + " " + message, class: "primary-line"
                @div line + ": " + lineText.trim()

    editorView: ->
        atom.workspaceView.getActiveView()

    editor: ->
        @editorView().getEditor()

    show: ->
        @storeFocusedElement()
        atom.workspaceView.appendToTop(this)

        atom.workspaceView.on "keydown.pep8", (event) =>
            if event.keyCode == 27
                @destroy()
                return false
            if event.keyCode == 38
                @selectPreviousItemView()
                return false
            if event.keyCode == 40
                @selectNextItemView()
                return false

    selectItemView: (view) ->
        super

        {line, position} = @getSelectedItem()
        @moveToPosition line, position

    confirmed : ({line, position}) ->
        @destroy()
        @moveToPosition line, position

    moveToPosition: (line, position) ->
        @editorView().scrollToBufferPosition([line, position], center: true)
        @editor().setCursorBufferPosition([line, position])
