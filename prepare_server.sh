#!/usr/bin/env bash
#

set -xeuo pipefail

sudo apt install -yq sysstat moreutils

sudo mdadm --create --verbose /dev/md0  --level=0 --metadata=1.2 --name=NVME_RAID --raid-devices=2 /dev/nvme0n1 /dev/nvme1n1;
sudo mkfs.ext4 -L RAID0 /dev/md0;
sudo mkdir -p /scratch;
sudo mount LABEL=RAID0 /scratch;
sudo chown azuser:azuser /scratch;
ls -lah /scratch;
df -h;
