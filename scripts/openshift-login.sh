#!/bin/bash
echo "Logging into OpenShift"
# oc login $OPENSHIFT_URL --token=$OPENSHIFT_TOKEN --insecure-skip-tls-verify=true
oc login --token=sha256~GA1P6rI6lqqYLDYbDMRmewadczKfh8Ql54q2LOMeaTw --server=https://api.rm3.7wse.p1.openshiftapps.com:6443


oc create secret docker-registry gitlab-registry-secret \
  --docker-server=registry.gitlab.com \
  --docker-username=kharatramesh \
  --docker-password=glpat-ZBPwwK5F5bvqXR6p2_SoFW86MQp1OjZtMzVhCw.01.121us8u5k \
  --docker-email=kharatramesh@gmai.com

#!/bin/bash

# # echo "Logging into OpenShift"

# # oc login $OPENSHIFT_SERVER --token=$OPENSHIFT_TOKEN --insecure-skip-tls-verify=true

# echo "Selecting project"

# oc project $OPENSHIFT_PROJECT

# echo "Deploying application"

# oc apply -f k8s/dev/deployment.yaml
# oc apply -f k8s/dev/service.yaml

# oc apply -f k8s/dev/route.yaml