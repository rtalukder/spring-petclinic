FROM openjdk:8u191-jre-alpine
MAINTAINER Raquib Talukder <rtalukde@mail.depaul.edu>
WORKDIR /etc/home/root/

EXPOSE 8080

COPY ./spring-petclinic-1.4.2.jar /etc/home/root
RUN cd /etc/home/root

ENTRYPOINT ["java", "-jar", "spring-petclinic-1.4.2.jar", "--spring.profiles.active=mysql"]
