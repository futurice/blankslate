#!/bin/bash
set -e

source scripts/argparse.bash
argparse "$@" <<EOF || exit 1
`cat config/argparse_settings`
parser.add_argument('-name')
parser.add_argument('-p', help='python binary path')
EOF

<<DESC
virtualenv (http://docs.python-guide.org/en/latest/dev/virtualenvs/)
DESC

virtualenv $ENVS_DIR/$NAME -p $P
