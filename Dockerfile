FROM ubuntu:latest

RUN apt-get update && apt install openjdk-21-jre -y

WORKDIR /root

COPY target/hello-demo-*.jar /root

ENTRYPOINT ["java -jar /root/hello-demo-*.jar"]

CMD ["&&"]
