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
	-it \
	stcsracmp \
	/usr/bin/bash
