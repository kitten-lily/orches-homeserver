#!/bin/sh
mc alias set ente http://ente-minio:3200 ${MINIO_ROOT_USER} ${MINIO_ROOT_PASSWORD}
mc ping ente --exit

cd /data

mc mb -p ente/b2-eu-cen
mc mb -p ente/wasabi-eu-central-2-v3
mc mb -p ente/scw-eu-fr-v3
