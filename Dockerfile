FROM sudarsha/jdk8devstack:latest
MAINTAINER Sudarsha Hewa <sudarsha@gamil.com>

ADD content/setup.sh /
ADD content/javalibs/* /opt/tomcat/latest/lib/
RUN . ./setup.sh
