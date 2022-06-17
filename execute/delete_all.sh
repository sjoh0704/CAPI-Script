#!/bin/bash
export CLUSTER_NAME=sseung-capi-test
export AWS_REGION=ap-northeast-2
clusterawsadm bootstrap iam delete-cloudformation-stack
kubectl delete -f ../clusters/$CLUSTER_NAME.yaml
clusterctl delete --all
