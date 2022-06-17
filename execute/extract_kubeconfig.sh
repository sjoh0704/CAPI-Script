#!/bin/bash
CLUSTER_NAME=sseung-capi-test
NAMESPACE=default
kubectl -n $NAMESPACE get secret $CLUSTER_NAME-kubeconfig -o jsonpath={.data.value} | base64 -d > ../kubeconfig.yaml 
