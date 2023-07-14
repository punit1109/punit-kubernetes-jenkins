#!/bin/bash
sed "s/client-pod-name/$1/g" temp.yml > deploy-test.yml
sed "s/client-service-name/$2/g" temp.yml > deploy-test.yml