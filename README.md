# atom-pep8

An [Atom](http://atom.io) package for running the pep8 linter over your Python files. Currently you have to invoke it using the "PEP8: Lint" command.

It requires you have the `pep8` command line tool installed, if it's not installed in `/usr/local/bin/pep8` you'll need to configure the path manually in the preferences.

![](http://f.cl.ly/items/1B420w3u46413n1S1X0b/AtomPEP8.gif)

### Preferences

- *PEP8 Path*: Path to the pep8 binary for linting (default: `/usr/local/bin/pep8`)
- *Ignore Errors*: Command separated list of pep8 errors to ignore (default: `null`) (example: `E501, E302`). A complete list of error codes can be found [here](http://pep8.readthedocs.org/en/latest/intro.html#error-codes).
- *Lint On Save*: If checked, PEP8 linting is performed any time a Python file is saved. (Default: Checked)
### TODO

- Try and automatically locate the pep8 tool (or bundle one in here)
- Tests tests tests
