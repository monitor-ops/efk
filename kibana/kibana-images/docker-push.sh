https://ropenscilabs.github.io/r-docker-tutorial/04-Dockerhub.html
https://goinbigdata.com/docker-run-vs-cmd-vs-entrypoint/
https://stackoverflow.com/questions/49088327/running-a-local-kibana-in-a-container
https://hub.docker.com/


kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.30/logtrail-6.4.2-0.1.30.zip

kibana-plugin install file:///tmp/logtrail-7.2.0-0.1.31.zip


RUN /usr/share/kibana/bin/kibana-plugin install file:///usr/share/kibana/logtrail-7.2.0-0.1.31.zip


docker login --username=nik786 


docker cp logtrail-7.2.0-0.1.31.zip ContainerName:/tmp/

docker rmi -f 9495b102598a

docker build -t kb-logtrail -f kb .

docker run --name kb-instance -p 5601:5601 -d docker.elastic.co/kibana/kibana-oss:7.2.0




docker run --name dev-mongo  -p 27017:27017 -v /opt/apps/mongo-data:/data/db -d mongo


docker run --link YOUR_ELASTICSEARCH_CONTAINER_NAME_OR_ID:elasticsearch -p 5601:5601 {docker-repo}:{version}


kubectl run tomcat --image=tomcat:8.0 --replicas=1 -n elk-test
kubectl run tomcat --image=nginx --replicas=1 -n elk-test

docker run                        \
  --name elasticsearch_container  \
  -p 9200:9200                    \
  -p 9300:9300                    \
  -e "discovery.type=single-node" \
  -d  docker.elastic.co/elasticsearch/elasticsearch:7.2.0

docker tag bb38976d03cf yourhubusername/verse_gapminder:firsttry

docker push yourhubusername/verse_gapminder
