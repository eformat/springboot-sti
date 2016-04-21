#!/bin/bash

oc delete bc/helloworld-mvn
oc delete build helloworld-mvn-1
oc delete dc/helloworld-mvn
oc delete endpoint helloworld-mvn
oc delete endpoints helloworld-mvn
oc delete endpoints postgres-service
oc delete is/helloworld-mvn
oc delete route helloworld-mvn
oc delete svc helloworld-mvn
oc delete svc postgres-service
oc delete template springboot-postgres-helloworld-maven
