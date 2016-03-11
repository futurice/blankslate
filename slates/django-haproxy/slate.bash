# !/bin/bash
set -e

source scripts/argparse.bash
argparse "$@" <<EOF || exit 1
parser.add_argument('-env', help="virtualenv name")
parser.add_argument('-name', '--name', default="", type=str,
                    help='optional argument [default %(default)s]')
EOF

<<DESC
Django project initiation with 'startproject', assuming HAproxy in front
DESC

if [[ -z $ENV ]]; then
    echo "$0: error: -env option required"
    exit 1
fi

source envs/$ENV/bin/activate

if [[ -z $NAME ]]; then
    echo "Creating a new Django project. Name:"
    read NAME
fi

django-admin startproject $NAME

cat <<EOT >> $NAME/$NAME/settings.py 
INSTALLED_APPS += ['$NAME',]
STATIC_URL = '/$NAME/static/'
STATIC_ROOT = '/tmp/$NAME/static/'
EOT

cat <<EOT >> $NAME/$NAME/urls.py 
from django.conf.urls import include
urlpatterns = [
    url(r'^$NAME/', include(urlpatterns)),
]
EOT
