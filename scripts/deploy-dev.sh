#!/bin/bash
source scripts/openshift-login.sh
oc project priartechnoworld-dev
oc create secret docker-registry gitlab-registry-secret1 \
  --docker-server=registry.gitlab.com \
  --docker-username=kharatramesh \
  --docker-password="glpat-ZBPwwK5F5bvqXR6p2_SoFW86MQp1OjZtMzVhCw.01.121us8u5k" \
  --docker-email=kharatramesh@gmai.com

# envsubst < k8s/dev/deployment.yaml | oc apply -f -
oc apply -f k8s/dev/
oc set image deployment/ioclweb flask-app=$CI_REGISTRY_IMAGE:$CI_COMMIT_SHA