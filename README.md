microservices-demo

sudo docker network ls

kafkacat was renamed kcat.
https://github.com/edenhill/kcat

installing kcat locally seems to make it easier to use than
running it from Docker.

Listing topics on a broker
Assuming your Kafka broker is accessible at localhost:19092, 
you can list topics by running:

kafkacat -L -b localhost:19092

---------------------
kafkacat consumer

kafkat -C -b HOST:PORT -t TOPIC_NAME

kafkat -C -b localhost:19092 -t twitter-topic

--------------------
Running the application on command line: 

java -jar twitter-to-kafka-service-0.0.1-SNAPSHOT.jar

