#!/bin/bash

img="miquelalcon/bsctools:latest" #x86_64
docker pull $img

docker run -dit                         \
    --privileged                        \
    --name bsc_tools                    \
#	--dns DNS_of_the_host_machine		\
    -e DISPLAY=$DISPLAY                 \
    -v /tmp/.X11-unix:/tmp/.X11-unix    \
    -v `pwd`/workspace:/workspace       \
    $img                                \
    /bin/bash
./scripts/enter.sh
