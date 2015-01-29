#
# Solum Java Language Pack
#

# Pull base image.
FROM ubuntu:14.04

# Install Java.
RUN \
  apt-get -yqq update && \
  apt-get -yqq install openjdk-7-jdk

# Install Tomcat


# Install maven
RUN apt-get -yqq install maven

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

ADD bin /solum/bin
