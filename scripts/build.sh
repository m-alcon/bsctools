#!/bin/bash

if [ "$1" = "arm" ]; then
    img="miquelalcon/bsctools:arm64v8"
else
    img="miquelalcon/bsctools:latest" #x86_64
fi
docker pull $img

docker run -dit                         \
    --privileged                        \
    --name bsc_tools                    \
    -e DISPLAY=$DISPLAY                 \
    -v /tmp/.X11-unix:/tmp/.X11-unix    \
    -v `pwd`/workspace:/workspace       \
    $img                                \
    /bin/bash
./scripts/enter.sh
