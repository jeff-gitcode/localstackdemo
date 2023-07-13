# Localstack Demo

## Localstack Docker

```javascript
# install localstack in docker
https://docs.fuga.cloud/how-to-install-portainer-docker-ui-manager-on-ubuntu-20.04-18.04-16.04

$ docker-compose up

$ docker ps

$ docker exec -it id_container /bin/bash

# aws cli  local https://github.com/localstack/awscli-local


$ awslocal sqs create-queue --queue-name test-queue

$ awslocal sqs list-queues

# health check
http://localhost:4566/health

```

![alt text](./doc/localstack-health.jpg)

## Localstack-demo1

```javascript
$ sudo service docker status

$ sudo service docker start

$ docker-compose up -d

$ docker ps -a

$ docker exec -it id_container /bin/bash

# crud sqs

```

![crud sqs](./doc/sqs-demo.jpg)
