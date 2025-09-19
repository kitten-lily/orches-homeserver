![orches logo](https://raw.githubusercontent.com/orches-team/common/main/orches-logo-text.png)

# orches-config-rootful: Rootful orches Template Repository

This repository provides a rootful configuration template for [orches](https://github.com/orches-team/orches), a simple git-ops tool for orchestrating [Podman](https://podman.io/) containers and systemd units on a single machine. It is designed for users who want to run orches and managed containers with root privileges, leveraging systemd system services and Podman rootful containers.

## Contents

- [Overview](#overview)
- [Quick Start](#quick-start)

## Overview

This repository contains sample unit files for running orches and a demo [Caddy](https://caddyserver.com/) webserver as rootful Podman containers. It is intended to be used as a starting point for your own orches deployments. You can fork this repository and add or modify unit files to manage your own containers and services.

## Quick Start

### Prerequisites
- Podman >= 4.4
- systemd

### 1. Create 1Password token secret
```bash
nano -w ~/token.txt
# Paste your 1Password token here, save and exit
podman secret create op-sa-token ~/token.txt
rm ~/token.txt
```

### 2. Set up user/group namespaces
Add
```
containers:2147483647:2147483648
```
To /etc/subuid and /etc/subgid

### 3. Create required directories
```bash
sudo mkdir -p /var/lib/orches /etc/containers/systemd
```

### 4. Initialize orches with this repository
```bash
sudo podman run --rm -it --pid=host --pull=newer \
  --mount \
    type=bind,source=/run/systemd,destination=/run/systemd \
  -v /var/lib/orches:/var/lib/orches \
  -v /etc/containers/systemd:/etc/containers/systemd  \
  ghcr.io/orches-team/orches init \
  https://github.com/kitten-lily/orches-homeserver.git
```

### 5. Verify orches is running
```bash
systemctl status orches
sudo podman exec systemd-orches orches status
```
