#!/usr/bin/env bash
#

set -xeuo pipefail

log() {
  echo "$(date +'%T.%3N') - $1"
}

log 'miniconda installation: Start'
mv condarc ~/.condarc
wget -O ~/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ~/miniconda.sh -b -p ~/miniconda
eval "$(~/miniconda/condabin/conda shell.bash hook)"
conda init
log 'miniconda installation: Done'
