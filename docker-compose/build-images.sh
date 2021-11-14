#!/bin/bash

# Build Docker images via mvn install

cd ../config-server || exit
pwd
mvn install -DskipTests

cd ../elastic-query-service || exit
pwd
mvn install -DskipTests

cd ../elastic-query-web-client || exit
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

