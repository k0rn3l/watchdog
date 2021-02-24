#!/bin/bash

#Define cleanup procedure
cleanup() {
    echo "Container stopped, disabling watchdog..."
    kill -TERM "$child" 2>/dev/null
    sh -c "echo 'V' >> /dev/watchdog"
}

#Trap SIGTERM
trap 'true' SIGTERM

#Execute command
./watchdog.sh &

child=$!

echo "Spawned watchdog with PID: $child"

#Wait
wait "$child"

#Cleanup
cleanup
