#!/usr/bin/fish
xhost +local:root

docker run --rm -it \
-v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
--device=/dev/dri:/dev/dri \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
-w (eval pwd) \
-v (eval pwd):(eval pwd) \
anna-dexnet:cpu

xhost -local:root