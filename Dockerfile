FROM ubuntu:18.04
MAINTAINER Serfim TIC

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get update && apt-get install -y \
  sshpass \
  ffmpeg \
  openjdk-11-jdk \
  curl \
  maven \
  build-essential

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  && apt install -y nodejs
