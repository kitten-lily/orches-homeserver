#!/bin/sh
mc alias set ente http://ente-minio:3200 ${ENTE_MINIO_USER} ${ENTE_MINIO_PASSWORD}
while ! mc ping ente --count 1
do
    echo "Waiting for minio..."
    sleep 0.5
done

cd /data

mc mb -p b2-eu-cen
mc mb -p wasabi-eu-central-2-v3
mc mb -p scw-eu-fr-v3
