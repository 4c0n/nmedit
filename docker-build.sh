#!/usr/bin/env bash
set -eux
(cd libs/libppf && ./docker-build.sh)
(cd libs/libpdl && ./docker-build.sh)
docker build --tag 4c0n/nmedit .
