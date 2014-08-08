FROM ubuntu:14.04
MAINTAINER Daniel Ingegneri <daniel@om3ga.net>

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv C0A52C50
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
RUN echo "deb http://www.ubnt.com/downloads/unifi/distros/deb/ubuntu ubuntu ubiquiti" >> /etc/apt/sources.list

# Option to adjust the mirror to be country specific
#RUN sed -i 's/\(archive.ubuntu.com\)/au.\1/g' /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -yf unifi

RUN sed -i 's!^JAVA_HOME=.*$!JAVA_HOME=/usr/lib/jvm/default-java!' /etc/init.d/unifi

ADD start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT /start.sh

EXPOSE 8080 8443