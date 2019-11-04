#!/bin/bash
set -e
if [! -f /setup.bash ];then
  echo $SETUP_BASH > /setup.bash
fi
source ~/.bashrc
exec "$@"
