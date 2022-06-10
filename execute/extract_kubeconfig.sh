#!/bin/bash
CLUSTER_NAME=capi-test
NAMESPACE=default
kubectl get secret capi-test-kubeconfig -o jsonpath={.data.value} | base64 -d > ../kubeconfig.yaml 
