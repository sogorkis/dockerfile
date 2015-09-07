FROM java:8
MAINTAINER Stanislaw Ogorkis, s.ogorkis@gmail.com

ADD assets /tmp

VOLUME ["/data"]

EXPOSE 8989

WORKDIR /data

RUN /tmp/init.sh
