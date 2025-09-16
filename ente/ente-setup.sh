#!/usr/bin/env bash

. /var/lib/orches/repo/scripts/utils.sh

podman_secret Ente "API Endpoint" ente-api-endpoint
podman_secret Ente "Albums Endpoint" ente-albums-endpoint
podman_secret Ente "Accounts Endpoint" ente-accounts-endpoint
podman_secret Ente "B2 Endpoint" ente-b2-endpoint
podman_secret Ente "Web Endpoint" ente-web-endpoint

podman_secret Ente "E-mail Host" ente-smtp-host
podman_secret Ente "E-mail Username" ente-smtp-username
podman_secret Ente "E-mail Password" ente-smtp-password
podman_secret Ente "E-mail Sender" ente-smtp-email

podman_secret Ente "JWT Secret" ente-jwt-secret
podman_secret Ente "Encryption Key" ente-key-encryption
podman_secret Ente "Hash Key" ente-key-hash

podman_secret Ente "PostgreSQL Password" ente-db-password
podman_secret Ente "Webauthn Origins" ente-webauthn-rporigins