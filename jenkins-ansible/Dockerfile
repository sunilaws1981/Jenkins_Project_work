FROM jenkins/jenkins
  
USER root

RUN apt-get update -y && \
    apt-get install ansible -y && \
    apt-get install python -y && \
    apt-get install iputils-ping -y 

RUN apt-get install  vim -y

RUN apt-get install  nano -y  


USER jenkins
