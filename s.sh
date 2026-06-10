#!/bin/sh
set -e

mkdir -p /app/site /app/risultati/DATA_SPLIT /app/logs /app/whoisds

[ -d /opt/site ] && cp -r /opt/site/* /app/site/
[ -d /opt/risultati ] && cp -r /opt/risultati/* /app/risultati/

exec node /opt/s/s.bundle.js
