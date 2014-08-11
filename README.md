Ubiquiti Unifi controller on Ubuntu
===
Provides a functional unifi controller installed on Ubuntu 14.04.

Installation
---
1. Git clone this repo & cd into it
2. `sudo ./build.sh`

Running
---
1. Create a folder on your host to store Unifi application data. It will be referred to as $UNIFIDATA.
2. Copy system.properties into $UNIFIDATA.
3. Run the following docker command (as root if required):
    docker run --name unifi -t -p 8080:8080 -p 8080:8080/udp -p 8443:8443 -p 8443:8443/udp -p 8081:8081 -p 8081:8081/udp -p 8843:8843 -p 8843:8843/udp -p 8880:8880 -p 8880:8880/udp -p 1900:1900/udp -v $UNIFIDATA:/var/lib/unifi unifi
4. You will need to press Ctrl+C to escape from the container. It seems to keep running even when you do this. Otherwise Ctrl+P and Ctrl+Q will do the trick.

Note: I'm new to Docker, and I'm improving this as I learn more. Pull requests welcome.
