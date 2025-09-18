#!/usr/bin/env bash

. /var/lib/orches/repo/scripts/utils.sh

podman_secret Servarr "Wireguard Private Key" servarr-wireguard-private-key
podman_secret Servarr "Wireguard Countries" servarr-wireguard-countries
