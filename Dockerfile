FROM ubuntu:latest

RUN apt-get update && apt install openjdk-21-jre -y

COPY target/hello-demo-*.jar /srv/

WORKDIR /

ENTRYPOINT ["java -jar /srv/hello-demo-*.jar > /dev/null"]

CMD ["&&"]
