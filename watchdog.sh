#!/bin/bash
echo "Sleeping for 10 minutes grace period..."
sleep 600
echo "Starting watchdog protection"
while :
   do
       sh -c "echo '.' >> /dev/watchdog"
      sleep 10
   done
