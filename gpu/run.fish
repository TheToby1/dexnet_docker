#!/usr/bin/fish
xhost +local:root

nvidia-docker run --rm -it \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
-v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
-w (eval pwd) \
-v (eval pwd):(eval pwd) \
anna-dexnet:gpu

xhost -local:root