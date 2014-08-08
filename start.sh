#!/bin/bash
touch /var/log/unifi/server.log
/etc/init.d/unifi start && tail -f /var/log/unifi/server.log