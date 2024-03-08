#!/bin/bash
podman build --cgroup-manager cgroupfs -t caddy-php .