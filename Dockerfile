FROM centos
LABEL maintainer="xyz@gmail.com"

RUN mkdir /web

RUN curl -O https://downloads.apache.org/tomcat/tomcat-9/v9.0.43/src/apache-tomcat-9.0.43-src.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.43-src/* /web/.

RUN yum -y install java
RUN java -version



ADD sample.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]

