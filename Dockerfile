FROM ubuntu:latest

RUN apt-get update && apt install openjdk-21-jre -y

WORKDIR /root

COPY target/hello-demo-0.0.1-SNAPSHOT.jar /root

ENTRYPOINT ["java","-jar","/root/hello-demo-0.0.1-SNAPSHOT.jar"]

CMD ["&&"]
