#!/usr/bin/env bash

. /var/lib/orches/repo/scripts/utils.sh

TEMPLATE_PATH="/var/lib/orches/repo/ente/templates/museum.yaml"
CONFIG_PATH="/var/lib/orches/repo/ente/config"
CONFIG_FILE="${CONFIG_PATH}/museum.yaml"

podman_secret Ente "Api Origin" ente-api-origin

if [ ! -d "${CONFIG_PATH}" ]; then
    mkdir -p "${CONFIG_PATH}"
fi

if [ ! -f "${CONFIG_FILE}" ]; then
    $OP_PODMAN --user root --volume $TEMPLATE_PATH:/template.yml:z \
    --volume $CONFIG_PATH:/config:z \
    $OP_IMAGE op inject --in-file /template.yml  --out-file /config/museum.yaml --force
fi