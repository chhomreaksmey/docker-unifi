Ubiquiti Unifi controller on Ubuntu
===
Provides a functional unifi controller installed on Ubuntu 14.04.

Installation
---
1. Git clone this repo & cd into it
2. docker build -t unifi .
3. docker run -p 8080:8080 -p 8443:8443 -t --name "unifi" unifi
