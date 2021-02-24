docker run -d --name watchdog --restart=unless-stopped  --device=/dev/watchdog --device=/dev/watchdog0  watchdog:latest
