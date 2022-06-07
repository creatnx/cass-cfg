node_host=$(hostname -I | awk '{print $1}') envsubst < ./cass-cfg/docker.yaml > ./cass-cfg/config.yaml
./temporal-server --env=config --config=./cass-cfg start --service=history
