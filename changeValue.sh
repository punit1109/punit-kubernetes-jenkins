#!/bin/bash
sed "s/client-pod-name/$1/g" temp.yml > clinet-pod.yml
sed "s/client-service-name/$2/g" clinet-pod.yml > deploy-test.yml
sed "s/ingress-service-name/$2/g" ingress.yml > ingress-test.yml