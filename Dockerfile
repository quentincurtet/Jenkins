FROM ubuntu
MAINTAINER Roth Mathieu "mathieu_roth@hotmail.fr"
RUN echo deb http://archive.ubuntu.com/ubuntu precise universe >> /etc/apt/sources.list
RUN  apt-get update
ADD http://mirrors.jenkins-ci.org/war/1.556/jenkins.war /opt/jenkins.war
RUN  apt-get update
RUN ln -sf /jenkins /root/.jenkins
ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
VOLUME ["/jenkins"]
CMD [""]
