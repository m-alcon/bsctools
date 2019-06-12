#!/bin/bash

img="miquelalcon/bsctools:xavier" 
docker pull $img

docker run -dit                         \
    --privileged                        \
    --name bsc_tools                    \
    -e WORKDIR=/workspace		\
    --dns 84.88.52.35		        \
    -e DISPLAY=$DISPLAY                 \
    -v /tmp/.X11-unix:/tmp/.X11-unix    \
    -v `pwd`/workspace:/workspace       \
    -v /usr/lib/aarch64-linux-gnu/tegra:/usr/lib/aarch64-linux-gnu/tegra \
    --device=/dev/nvhost-ctrl		\
    --device=/dev/nvhost-ctrl-gpu	\
    --device=/dev/nvhost-prof-gpu	\
    --device=/dev/nvmap			\
    --device=/dev/nvhost-gpu		\
    --device=/dev/nvhost-as-gpu		\
    $img                                \
    /bin/bash
./scripts/enter.sh
