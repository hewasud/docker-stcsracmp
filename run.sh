docker run \
	--privileged \
	--name stcsracmp \
	--device /dev/dri \
	--device /dev/snd \
	-v /apps/stcsracmp:/persist \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v /etc/localtime:/etc/localtime:ro \
	-e DISPLAY \
	-e LANG \
	-e username=username \
	-itd \
	stcsracmp \
	/bin/bash

# Setup host display access for the container
export containerId=$(docker ps -l -q)
xhost +local:$(docker inspect --format='{{ .Config.Hostname }}' $containerId)

docker container attach stcsracmp
