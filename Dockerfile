# Mesos

FROM thefactory/java

MAINTAINER Mike Babineau mike@thefactory.com

# Install Mesos
RUN apt-get update && apt-get -y install curl libsvn1
ADD http://downloads.mesosphere.io/master/debian/7/mesos_0.21.1-1.0.debian77_amd64.deb /tmp/mesos.deb
RUN dpkg -i /tmp/mesos.deb && rm /tmp/mesos.deb
