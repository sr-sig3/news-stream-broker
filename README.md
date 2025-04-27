# News Stream Broker

This repository contains the Kafka infrastructure setup for the news streaming service.

## Prerequisites

- Docker
- Docker Compose

## Setup

1. Clone the repository:
```bash
git clone [repository-url]
cd news-stream-broker
```

2. Start the Kafka infrastructure:
```bash
docker-compose up -d
```

3. Create Kafka topics:
```bash
chmod +x scripts/create-topics.sh
./scripts/create-topics.sh
```

## Services

- **Kafka**: Running on `localhost:9092`
- **Zookeeper**: Running on `localhost:2181`
- **Kafdrop**: Web UI for Kafka monitoring, accessible at `http://localhost:9000`

## Topics

- `news-topic`: Main topic for news data
- `news-topic-raw`: Raw news data
- `news-topic-processed`: Processed news data

## Usage

### Connecting to Kafka

Producers and consumers can connect to Kafka using:
```
bootstrap.servers=localhost:9092
```

### Monitoring

Access the Kafdrop UI at `http://localhost:9000` to monitor:
- Topics
- Messages
- Consumer groups
- Brokers

## Development

### Adding New Topics

1. Edit `scripts/create-topics.sh`
2. Add the new topic to the `topics` array
3. Run the script again

### Stopping the Services

```bash
docker-compose down
```

## Troubleshooting

1. If services fail to start, check the logs:
```bash
docker-compose logs
```

2. To restart the services:
```bash
docker-compose restart
```