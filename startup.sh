#!/bin/bash
set -ex

PROJECT_NAME="$1"

echo "current HOST_IP=$HOST_IP"

exec java -DDISCOVERY_SERVICE_HOST=$HOST_IP $MEM_OPTS $GC_OPTS $START_OPTS $BASE_OPTS  -jar -server ${PROJECT_NAME}.jar