FROM jenkins/jenkins

MAINTAINER lukas.elsner@sbb.ch

USER root

RUN apt-get update && apt-get install -y apt-utils python3-requests && rm -rf /var/lib/apt/lists/*
RUN echo Europe/Zurich > /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata

USER jenkins
