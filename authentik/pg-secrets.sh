#!/usr/bin/env bash

. /var/lib/orches/repo/scripts/utils.sh

podman_secret Authentik "PostgreSQL Password" authentik-pg-pass
