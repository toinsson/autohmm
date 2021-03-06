#!/bin/bash
# This script is meant to be called by the "script" step defined in
# .travis.yml. See http://docs.travis-ci.com/ for more details.
# The behavior of the script is controlled by environment variabled defined
# in the .travis.yml in the top level folder of the project.

# License: 3-clause BSD
#
# Script adapted from hmmlearn package, see http://github.com/hmmlearn/hmmlearn

set -e

python --version
python -c "import sklearn; print('sklearn %s' % sklearn.__version__)"

nosetests tests
