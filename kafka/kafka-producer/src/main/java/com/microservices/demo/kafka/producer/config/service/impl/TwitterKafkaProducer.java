package com.microservices.demo.kafka.producer.config.service.impl;

import com.microservices.demo.kafka.avro.model.TwitterAvroModel;
import com.microservices.demo.kafka.producer.config.service.KafkaProducer;

public class TwitterKafkaProducer implements KafkaProducer<Long, TwitterAvroModel> {
    @Override
    public void send(String topicName, Long key, TwitterAvroModel message) {
        //TODO
    }
}
