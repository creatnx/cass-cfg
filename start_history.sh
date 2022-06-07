node_host=$(hostname -I | awk '{print $1}') envsubst < ./docker.yaml > config.yaml
./temporal-server --env=config --config=./cass-cfg start --service=history
