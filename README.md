Localstack Demo

```javascript
# install localstack in docker
https://docs.fuga.cloud/how-to-install-portainer-docker-ui-manager-on-ubuntu-20.04-18.04-16.04

$ docker-compose up

$ docker ps

$ docker exec -it id_container /bin/bash

$ awslocal sqs create-queue --queue-name test-queue

$ awslocal sqs list-queues

# health check
http://localhost:4566/health


```

![alt text](./doc/localstack-health.jpg)
