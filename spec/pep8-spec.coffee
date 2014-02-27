Pep8Linter = require '../lib/pep8'

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

describe "Pep8Linter", ->
    activationPromise = null

    beforeEach ->
        atom.workspaceView = new WorkspaceView
        activationPromise = atom.packages.activatePackage('pep8Linter')

    # describe "when the pep8:toggle event is triggered", ->
    #     it "attaches and then detaches the view", ->
    #         expect(atom.workspaceView.find('.pep8')).not.toExist()
    #
    #         # This is an activation event, triggering it will cause the package to be
    #         # activated.
    #         atom.workspaceView.trigger 'pep8:toggle'
    #
    #         waitsForPromise ->
    #             activationPromise
    #
    #         runs ->
    #             expect(atom.workspaceView.find('.pep8')).toExist()
    #             atom.workspaceView.trigger 'pep8:toggle'
    #             expect(atom.workspaceView.find('.pep8')).not.toExist()
