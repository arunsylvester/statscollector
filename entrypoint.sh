#!/bin/bash

java -Xms$JAVA_XMS -Xmx$JAVA_XMX \
    -jar stats-collector.jar "$@"
