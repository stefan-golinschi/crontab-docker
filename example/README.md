podman run -it --rm \
-v $PWD/my-cron:/config/cron:ro,Z \
-v $PWD/my-script.sh:/config/my-script.sh:ro,Z \
docker.io/sg77/crontab-docker:latest