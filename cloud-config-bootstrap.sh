#!/bin/bash

cat > "cloud-config.yaml" <<EOF
#cloud-config

ssh_authorized_keys:
  - ssh-rsa ...
EOF

sudo coreos-install -d /dev/vda -c cloud-config.yaml
sudo reboot
