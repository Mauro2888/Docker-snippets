FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:openjdk-r/ppa && \
    apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk8-installer
    
ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre/bin/java
ENV PATH $PATH:/usr/lib/jvm/java-8-oracle/jre/bin/java


#COPY spring-boot-app-0.0.1-SNAPSHOT.war /app.war 
# run application with this command line 
#CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/app.war"]
# docker run -d  -p 8080:8080 spring-boot-app:latest
#docker run -it linux_demo bash
