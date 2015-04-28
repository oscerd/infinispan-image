#!/bin/bash

/bin/my_init
/opt/infinispan-server/bin/standalone.sh -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0

if [ "$AUTH" -eq "true" ]; then
    /opt/infinispan-server/bin/add-user.sh -u $AUTH_USERNAME -p "$AUTH_PASSWORD" -ro supervisor,reader,writer
fi
