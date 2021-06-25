#!/bin/sh

docker run -it \
    --device /dev/kvm \
    -p 50922:10022 \
    -e GENERATE_UNIQUE=true \
    -e DEVICE_MODEL="iMacPro1,1" \
    -e WIDTH=1280 \
    -e HEIGHT=768 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e "DISPLAY=${DISPLAY:-:0.0}" \
    sickcodes/docker-osx:latest
