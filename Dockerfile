#
# Solum Java Language Pack
#

FROM dockerfile/ubuntu

# Install Java.
RUN \
  apt-get update -yqq && \
  apt-get install -yqq openjdk-7-jdk && \
  rm -rf /var/lib/apt/lists/*

# Install Tomcat


# Install maven
RUN apt-get install -yqq maven

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

COPY bin /solum/bin

# Define default command.
CMD ["bash"]
