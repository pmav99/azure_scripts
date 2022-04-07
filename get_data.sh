#!/usr/bin/env bash
#

set -xeuo pipefail

mkdir -p /scratch/schism2d_r01m_in/
azcopy sync https://sapyposeidondata.blob.core.windows.net/schism2d-r01m-in /scratch/schism2d_r01m_in/

mkdir -p /scratch/global_test_model/
azcopy sync https://sapyposeidondata.blob.core.windows.net/global-test-model /scratch/global_test_model/

ln -s /scratch/global_test_model/sflux/ /scratch/schism2d_r01m_in/sflux
