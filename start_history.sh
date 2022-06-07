node_host=$(hostname -I | awk '{print $1}') envsubst < ./docker.yaml > ./config.yaml
touch out.log
./server --env=config --config=. start --service=history > out.log &
