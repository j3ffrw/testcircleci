FROM centos:latest

RUN yum -y update
RUN yum -y install wget tar

WORKDIR /opt

RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u71-b14/server-jre-7u71-linux-x64.tar.gz
RUN tar xzf server-jre-7u71-linux-x64.tar.gz
RUN rm -rf server-jre-7u71-linux-x64.tar.gz
RUN alternatives --install /usr/bin/java java /opt/jdk1.7.0_71/bin/java 1

ADD /home/ubuntu/testcircleci/insidious-api-1.0-SNAPSHOT.war /root/appname.jar
