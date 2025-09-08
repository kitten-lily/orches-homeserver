#!/usr/bin/env bash

. /var/lib/orches/repo/scripts/utils.sh

podman_secret Authentik "Secret Key" authentik-secret-key
podman_secret Authentik "E-mail Host" authentik-email-host
podman_secret Authentik "E-mail Username" authentik-email-username
podman_secret Authentik "E-mail Password" authentik-email-password
podman_secret Authentik "E-mail From" authentik-email-from
