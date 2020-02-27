#!/bin/bash
#push google or coreos images to dockerhub or aliyun registry,
#change the registry name and username/password to yourself's.

DOCKER_HUB=kevinniu666
ALI_REGISTRY=registry.cn-hangzhou.aliyuncs.com/imagesfromgoogle
echo "151.101.52.209 central.maven.org" >> /etc/hosts
#config the following env at travis-ui
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker build -t "$DOCKER_HUB/opentsdb:2.2.0" .
docker push $DOCKER_HUB/opentsdb:2.2.0
