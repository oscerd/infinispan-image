#!/bin/bash

/bin/my_init

if [ "$AUTH" = "true" ]; then
    /opt/infinispan-server/bin/add-user.sh -u $AUTH_USERNAME -p "$AUTH_PASSWORD" -ro supervisor,reader,writer
fi

/opt/infinispan-server/bin/standalone.sh -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0
