#!/bin/bash

if [ "$1" = "arm" ]; then
    docker pull miquelalcon/bsctools:arm64v8
else
    docker pull miquelalcon/bsctools:latest #x86_64
fi

docker run -dit                         \
    --privileged                        \
    --name bsc_tools                    \
    -e DISPLAY=$DISPLAY                 \
    -v /tmp/.X11-unix:/tmp/.X11-unix    \
    -v `pwd`/workspace:/workspace       \
    miquelalcon/bsctools:latest         \
    /bin/bash
./scripts/enter.sh
