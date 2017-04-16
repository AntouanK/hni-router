#!/bin/sh

docker build -t antouank/hni-api ../hni-api
docker build -t antouank/hni-feed ../hni-feed
docker build -t antouank/hni-ui ../hni-ui

