docker run                        \
    --name elasticsearch_container  \
    -p 9200:9200                    \
    -p 9300:9300                    \
    -e "discovery.type=single-node" \
    -d  docker.elastic.co/elasticsearch/elasticsearch:7.2.0

