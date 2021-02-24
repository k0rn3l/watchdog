# watchdog
Very simple watchdog running in docker container utilizing hardware watchdog SOC on Raspberry PI. Helps with RPi hardware hangs when ussing Home Assistant Operating System image (hassio).

Usage:
1. Activate ssh/terminal hassio addon ( https://github.com/hassio-addons/addon-ssh )
2. Open shell terminal provided by the ssh addon.
3. clone repo: <br/>
```cd /data && git clone https://github.com/k0rn3l/watchdog.git```
5. build docker image: <br/>
```cd watchdog && docker build -t watchdog .```
5. run watchdog docker container: <br/>
```docker run -d --name watchdog --restart=unless-stopped  --device=/dev/watchdog --device=/dev/watchdog0  watchdog:latest``` <br/>
   or simply using file: <br/>
```./start-watchdog-docker.sh```
   
Watchdog will activate itself after 10 minutes from start.<br/>
On physical console you will see messages "watchdog: watchdog0: watchdog did not stop!" appearing every 10 seconds. This is normal.
