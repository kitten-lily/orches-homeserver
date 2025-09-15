#!/usr/bin/env bash

. /var/lib/orches/repo/scripts/utils.sh

TEMPLATE_PATH="/var/lib/orches/repo/ente/templates/museum.yaml"
CONFIG_PATH="/var/lib/orches/repo/ente/config"
CONFIG_FILE="${CONFIG_PATH}/museum.yaml"

if [ ! -d "${CONFIG_PATH}" ]; then
    mkdir -p "${CONFIG_PATH}"
fi

rm '${CONFIG_FILE}'
if [ ! -f "${CONFIG_FILE}" ]; then
    $OP_PODMAN --user root --volume $TEMPLATE_PATH:/template.yml:z \
    --volume $CONFIG_PATH:/config:z \
    $OP_IMAGE op inject --in-file /template.yml  --out-file /config/museum.yml --force

    cat <<EOF >>museum.yaml

key:
      encryption: $(head -c 32 /dev/urandom | base64 | tr -d '\n')
      hash: $(head -c 64 /dev/urandom | base64 | tr -d '\n')

jwt:
      secret: $(head -c 32 /dev/urandom | base64 | tr -d '\n' | tr '+/' '-_')
EOF
fi