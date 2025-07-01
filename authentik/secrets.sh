#!/usr/bin/env bash

. /var/lib/orches/utils.sh

podman_secret Authentik "PostgreSQL Password" authentik-pg-pass
podman_secret Authentik "Secret Key" authentik-secret-key
podman_secret Authentik "E-mail Host" authentik-email-host
podman_secret Authentik "E-mail Username" authentik-email-username
podman_secret Authentik "E-mail Password" authentik-email-password
podman_secret Authentik "E-mail From" authentik-email-from
