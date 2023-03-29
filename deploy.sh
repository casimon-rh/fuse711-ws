#!/bin/bash
# PRERREQ oc login (token)
oc new-project fuse-example 2>/dev/null
oc import-image ubi8/openjdk-11 --from=registry.access.redhat.com/ubi8/openjdk-11 --confirm 2>/dev/null
oc new-app openjdk-11~https://github.com/casimon-rh/fuse711-ws --name soap-spring
oc create route edge --service=soap-spring