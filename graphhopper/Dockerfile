FROM java:8
MAINTAINER Stanislaw Ogorkis, s.ogorkis@gmail.com

ARG GH_VERSION=0.7.0
ADD assets /tmp

VOLUME ["/data"]

EXPOSE 8989

WORKDIR /data

RUN /tmp/init.sh

ENTRYPOINT ["/graphhopper/start.sh"]