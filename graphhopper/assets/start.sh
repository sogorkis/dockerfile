#!/bin/sh

OSM_FILE=`ls /data/*.pbf`

if [ -f /data/env.sh  ]; then
    . /data/env.sh
fi

if [ -z "${JAVA_OPTS}" ]; then
    JAVA_OPTS="$JAVA_OPTS -Xms64m -Xmx1024m -XX:MaxPermSize=256m -Djava.net.preferIPv4Stack=true"
    JAVA_OPTS="$JAVA_OPTS -server -Djava.awt.headless=true -Xconcurrentio"
    echo "Setting default JAVA_OPTS"
fi

RUN_ARGS=" -jar /graphhopper/*.jar jetty.resourcebase=/graphhopper/webapp config=/graphhopper/config.properties osmreader.osm=$OSM_FILE"

echo "JAVA_OPTS= ${JAVA_OPTS}"
echo "RUN_ARGS= ${RUN_ARGS}"

java $JAVA_OPTS $RUN_ARGS
