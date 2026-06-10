#!/bin/sh
set -e

mkdir -p /app/siti /app/founded/DATATO /app/logs /app/whodbs

[ -d /opt/siti ] && cp -r /opt/siti/* /app/siti/
[ -d /opt/founded ] && cp -r /opt/founded/* /app/founded/

exec node /opt/s/s.bundle.js