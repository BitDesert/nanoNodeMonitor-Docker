#!/bin/bash

monitordir="${HOME}/nanoNodeMonitor"

# create config dir
mkdir -p "${monitordir}"

if [ ! -f "${monitordir}/config.php" ]; then
        echo "Config File not found, adding default."
        cp "/var/www/html/modules/config.sample.php" "${monitordir}/config.php"
fi

# create config symlink
ln -s $monitordir/config.php /var/www/html/modules/config.php

# start apache
apache2-foreground