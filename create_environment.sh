#!/usr/bin/env bash
#

set -euo pipefail

eval "$(~/miniconda/condabin/conda shell.bash hook)"
#conda create --yes --name schism58 'gbrey::pschism=5.8*=*openmpi*_0'
conda create --yes --name schism58 --file conda.lock
