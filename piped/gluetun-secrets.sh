#!/usr/bin/env bash

. /var/lib/orches/repo/scripts/utils.sh

podman_secret Piped "Wireguard Private Key" piped-wireguard-private-key
podman_secret Piped "Wireguard Countries" piped-wireguard-countries
