#!/bin/bash
xhost +local:root

docker run --rm -it \
-v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
--device=/dev/dri:/dev/dri \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
-w "$PWD" \
-v "$PWD":"$PWD" \
anna-dexnet:cpu

xhost -local:root