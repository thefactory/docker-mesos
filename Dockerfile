# Mesos
#
# VERSION       1

FROM thefactory/java

MAINTAINER Mike Babineau mike@thefactory.com

# Install Mesos
RUN apt-get -y install curl
ADD http://downloads.mesosphere.io/master/debian/7/mesos_0.18.2_amd64.deb /tmp/mesos.deb
RUN dpkg -i /tmp/mesos.deb && rm /tmp/mesos.deb
