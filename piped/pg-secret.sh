#!/usr/bin/env bash

. /var/lib/orches/repo/scripts/utils.sh

podman_secret Piped "PostgreSQL Password" piped-pg-pass
