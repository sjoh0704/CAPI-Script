#!/bin/bash
CLUSTER_NAME=sseung-capi-test
NAMESPACE=default
CALICO_INSTALL_URL=https://docs.projectcalico.org/v3.19/manifests/calico.yaml
kubectl -n $NAMESPACE get secret $CLUSTER_NAME-kubeconfig -o jsonpath={.data.value} | base64 -d > ../kubeconfig.yaml 
kubectl --kubeconfig=../kubeconfig.yaml apply -f $CALICO_INSTALL_URL
