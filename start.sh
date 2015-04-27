#!/bin/bash

/bin/my_init
/opt/infinispan-server/bin/standalone.sh -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0
