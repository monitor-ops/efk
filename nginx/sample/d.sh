docker run --restart=always --name px -d --net=host \
--privileged=true \
-v /run/docker/plugins:/run/docker/plugins \
-v /var/lib/osd:/var/lib/osd:shared \
-v /dev:/dev \
-v /etc/pwx:/etc/pwx \
-v /opt/pwx/bin:/export_bin:shared \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /var/cores:/var/cores \
-v /usr/src:/usr/src \
--ipc=host \
portworx/px-dev:2.1.2-rc6 

