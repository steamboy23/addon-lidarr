#!/usr/bin/with-contenv bashio

# This script will run when the container starts
echo "Starting Lidarr..."

# You can add your Lidarr start-up command here, for example:
/opt/bin/Lidarr --no-daemon
