FROM centos:6

RUN yum -y install wget tar

WORKDIR /opt

ADD insidious-api-1.0-SNAPSHOT.war /root/appname.jar
