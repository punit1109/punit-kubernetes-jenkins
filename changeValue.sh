#!/bin/bash
sed "s/client-pod-name/$1/g" temp.yml > clinet-pod.yml
sed "s/client-service-name/$2/g" clinet-pod.yml > deploy-test.yml