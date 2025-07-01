#!/usr/bin/env bash

. /var/lib/orches/repo/scripts/utils.sh

podman_secret Servarr "Transmission User" servarr-transmission-user
podman_secret Servarr "Transmission Password" servarr-transmission-password
