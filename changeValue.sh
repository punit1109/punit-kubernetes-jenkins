#!/bin/bash
sed "s/client-deploy-name/$1/g" temp.yml > deploy-test.yml
sed "s/client-service-name/$2/g" temp.yml > deploy-test.yml