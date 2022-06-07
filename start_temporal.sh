node_host=$(hostname -I | awk '{print $1}') envsubst < ./docker.yaml > config.yaml
sudo docker run \
    --network=host \
    --name frontend \
    -e env=docker \
    -v /home/hoangdai.pham/cass-cfg/dynamic.yaml:/tmp/temporal/dynamic_config.yaml \
    -v /home/hoangdai.pham/cass-cfg/config.yaml:/etc/temporal/config/docker.yaml \
    temporalio/server:latest
