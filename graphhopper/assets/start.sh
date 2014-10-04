#!/bin/sh

OSM_FILE=`ls /data/*.pbf`

JAVA_OPTS="$JAVA_OPTS -Xms64m -Xmx1024m -XX:MaxPermSize=256m -Djava.net.preferIPv4Stack=true"
JAVA_OPTS="$JAVA_OPTS -server -Djava.awt.headless=true -Xconcurrentio"

RUN_ARGS=" -jar /graphhopper/*.jar jetty.resourcebase=/graphhopper/webapp config=/graphhopper/config.properties osmreader.osm=$OSM_FILE"

echo $RUN_ARGS

java $JAVA_OPTS $RUN_ARGS
