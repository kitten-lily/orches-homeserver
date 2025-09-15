#!/bin/sh
while ! mc config host add h0 http://ente-minio:3200 ${ENTE_MINIO_USER} ${ENTE_MINIO_PASSWORD}
do
    echo "Waiting for minio..."
    sleep 0.5
done

cd /data

mc mb -p b2-eu-cen
mc mb -p wasabi-eu-central-2-v3
mc mb -p scw-eu-fr-v3
