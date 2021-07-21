#FROM ubuntu:18.04
#RUN apt-get update && \
#    apt-get install -y nano
COPY /home/nikita/Documents/docker/mysql-test/src/script/timestamp.sh /opt/timestamp.sh
#RUN watch -n 5 /opt/timestamp.sh

