# docker-stcsracmp
Build image:

```
docker build -t stcsracmp .
```

Run container:
```
# Run the run.sh script or manually as follows:
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
	-e proxypassword=password \
	-itd \
	stcsracmp \
	/bin/bash

# Setup host display access for the container
export containerId=$(docker ps -l -q)
xhost +local:$(docker inspect --format='{{ .Config.Hostname }}' $containerId)

# Reatach to the container shell running in detached mode with the display
# setup correctly to launch any gui app. (example: idea.sh)
docker container attach stcsracmp
```
