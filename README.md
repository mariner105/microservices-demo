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
