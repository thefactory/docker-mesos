# Mesos

FROM thefactory/java

MAINTAINER Mike Babineau mike@thefactory.com

# Install Mesos
RUN apt-get update && apt-get -y install curl
ADD http://downloads.mesosphere.io/master/debian/7/mesos_0.20.1-1.0.debian75_amd64.deb /tmp/mesos.deb
RUN dpkg -i /tmp/mesos.deb && rm /tmp/mesos.deb
