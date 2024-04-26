#!/usr/bin/env bash

set -exo pipefail

cat /etc/redhat-release
rpm -q crun podman podman-tests
bats /usr/share/podman/test/system/030-run.bats
