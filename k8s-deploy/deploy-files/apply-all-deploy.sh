#!/bin/bash

for port in `seq 6373 6378`; do
    REDIS_PORT_NUMBER=${port}
    kubectl apply -f redis-cluster-node.deploy.$REDIS_PORT_NUMBER.yaml
done