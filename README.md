microservices-demo

sudo docker network ls

confluentinc/cp-kafkacat
https://hub.docker.com/r/confluentinc/cp-kafkacat

Listing topics on a broker
Assuming your Kafka broker is accessible as kafka:19092 on the Docker network docker-compose_default, you can list topics by running:

sudo docker run --tty \
--name kafkacat \
--network microsvc_application --rm \
confluentinc/cp-kafkacat \
kafkacat -b kafka:19092 \
-L


Consuming messages from a topic
Assuming your Kafka broker is accessible as kafka:19092 on the Docker network docker-compose_default, you can print messages and their associated metadata from topic foo, as follows:

sudo docker run --tty \
--network microsvc_application --rm \
confluentinc/cp-kafkacat \
kafkacat -b kafka:19092 -C -K: \
-f '\nKey (%K bytes): %k\t\nValue (%S bytes): %s\n\Partition: %p\tOffset: %o\n--\n' \
-t foo

Producing messages from a file on the host machine
kafkacat can produce messages into Kafka from a flat file. Assuming you have a file called /tmp/my_msgs.txt on the host machine from which you're running Docker, you would run the following to have kafkacat send these messages to the broker accessible as kafka:19092 on the Docker network microsvc_application:

sudo docker run --network microsvc_application --rm \
--volume /tmp/my_msgs.txt:/data/my_msgs.txt \
confluentinc/cp-kafkacat \
kafkacat -b kafka:19092 \
-t my_msgs \
-P -l /data/my_msgs.txt