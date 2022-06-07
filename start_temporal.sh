node_host=$(hostname -I | awk '{print $1}') envsubst < ./docker.yaml > config.yaml
sudo docker run \
    --network=host \
    --name ${service} \
    temporalio/server:latest
