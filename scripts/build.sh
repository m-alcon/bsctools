#!/bin/bash

docker pull miquelalcon/bsctools
docker run -dit                         \
    --privileged                        \
    --name bsc_tools                    \
    -e DISPLAY=$DISPLAY                 \
    -v /tmp/.X11-unix:/tmp/.X11-unix    \
    -v `pwd`/workspace:/workspace       \
    miquelalcon/bsctools:latest         \
    /bin/bash
./scripts/enter.sh
