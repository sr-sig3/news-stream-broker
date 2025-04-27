#!/bin/bash

# Kafka broker address
BROKER="localhost:9092"

# Create topics
topics=(
    "news-topic"
    "news-topic-raw"
    "news-topic-processed"
)

for topic in "${topics[@]}"; do
    echo "Creating topic: $topic"
    docker-compose exec kafka kafka-topics.sh --create \
        --bootstrap-server $BROKER \
        --topic $topic \
        --partitions 3 \
        --replication-factor 1
done

echo "All topics created successfully!" 