#!/bin/sh
export MC_HOST_ente=http://${ENTE_MINIO_USER}:${ENTE_MINIO_PASSWORD}@ente-minio:3200

mc alias set ente
while ! mc ping ente --count 1
do
    echo "Waiting for minio..."
    sleep 0.5
done

cd /data

mc mb -p b2-eu-cen
mc mb -p wasabi-eu-central-2-v3
mc mb -p scw-eu-fr-v3
