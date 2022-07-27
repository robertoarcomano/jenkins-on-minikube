#!/bin/bash
# 0. Constants
NS=jenkins
CHART=jenkinsci/jenkins

# 1. Apply configurations
kubectl -ns $NS apply -f pv.yml sa.yml values.yml

# 2. Install jenkins
helm install jenkins -n jenkins -f jenkins-values.yaml $CHART
