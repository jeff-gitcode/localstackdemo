# Localstack Demo

## Localstack Docker

```javascript
## clean up docker https://www.freecodecamp.org/news/how-to-remove-all-docker-images-a-docker-cleanup-guide/

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

## Localstack-docker1

```javascript
$ sudo service docker status

$ sudo service docker start

$ sudo service docker stop

$ docker-compose up -d

$ docker ps -a

$ docker exec -it id_container /bin/bash

# crud sqs

# stop and remove the container
$ docker compose down
```

![crud sqs](./doc/sqs-demo.jpg)

## nx lambda function

```javascript
# docker desktop => extensions => localstack => install => start => pull localstack

$ npx create-nx-workspace@latest my-functions --preset=@nx/aws-lambda

$ pip install aws-sam-cli-local

$ pip install terraform-local



```

## localstack-demo

```javascript
# https://github.com/localstack/localstack-demo.git

$ make usage

$ make install

$ make deploy

# surf http://localhost:4566/archive-bucket/index.html

#add python to zsh
$ echo "alias python=/usr/bin/python3" >> ~/.zshrc

```

![crud sqs](./doc/localstack-demo.jpg)

## terraform-demo

```javascript
$ pip install terraform-local

$ pip install awscli-local
```

## terraform-demo2

```javascript
$ tflocal init

$ tflocal plan

$ tflocal apply
```

## terraform-lambda-demo

```javascript
# start localstack on docker
$ sudo service docker start

# localstack health check http://localhost:4566/health

$ terraform init

$ terraform plan

$ terraform apply --auto-approve
```

![terraform-lambda-demo](./doc/terraform-lambda-demo.jpg)
