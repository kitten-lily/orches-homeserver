#!/usr/bin/env bash

. /var/lib/orches/repo/scripts/utils.sh

podman_secret Ente "MinIO User" ente-minio-user
podman_secret Ente "MinIO Password" ente-minio-password
