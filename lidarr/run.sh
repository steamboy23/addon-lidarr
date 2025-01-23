#!/usr/bin/with-contenv bashio
echo "starting Lidarr..."
/opt/bin/Lidarr --no-deamon
export PUID=${PUID:-0}
export PGID=${PGID:-0}
