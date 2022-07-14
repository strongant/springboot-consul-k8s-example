#!/bin/bash
set -ex

PROJECT_NAME="$1"

exec java $MEM_OPTS $GC_OPTS $START_OPTS $BASE_OPTS  -jar -server ${PROJECT_NAME}.jar