#!/bin/bash
# Note: docker must be listening on port 2376 for these builds to work.
#  Ubuntu does not have docker listen on a TCP port by default for security
#  reasons.
#  See restart-docker.sh to see how to set docker to listen on 2376.

cd ../analytics-service || exit
pwd
mvn install -DskipTests

cd ../config-server || exit
pwd
mvn install -DskipTests

cd ../discovery-service || exit
pwd
mvn install -DskipTests

cd ../elastic-query-service || exit
pwd
mvn install -DskipTests

cd ../elastic-query-web-client || exit
pwd
mvn install -DskipTests

cd ../elastic-query-web-client-2 || exit
pwd
mvn install -DskipTests

cd ../gateway-service || exit
pwd
mvn install -DskipTests

cd ../kafka-streams-service || exit
pwd
mvn install -DskipTests

cd ../kafka-to-elastic-service || exit
pwd
mvn install -DskipTests

cd ../reactive-elastic-query-service || exit
pwd
mvn install -DskipTests

cd ../reactive-elastic-query-web-client || exit
pwd
mvn install -DskipTests

cd ../twitter-to-kafka-service || exit
pwd
mvn install -DskipTests
