#
# Solum Java Language Pack
#

# Pull base image.
FROM ubuntu:14.04

# Install Java.
RUN \
  apt-get -q update && \
  apt-get -yqq install openjdk-7-jre && \
  rm -rf /var/lib/apt/lists/*

# Install maven
RUN apt-get -yqq install maven

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

ADD bin /solum/bin

# Define default command.
CMD ["bash"]
