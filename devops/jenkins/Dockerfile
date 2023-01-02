FROM jenkins/jenkins:lts
USER root
RUN apt-get update
RUN apt install docker.io -y
RUN usermod -aG docker jenkins
