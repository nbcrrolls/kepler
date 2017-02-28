#!/bin/bash


if [ ! -d $NBCRDEVEL ]; then
    echo "Need to install roll 'nbcr' first"
    exit 1
fi

# set google url for dowloading sources
#. $NBCRDEVEL/bootstrap-values.sh
export SURL="https://googledrive.com/host/0BwytB2hwlJ6Vbmx3TFNHY2I5OUk"

# download sources
. $ROLLSROOT/etc/bootstrap-functions.sh

