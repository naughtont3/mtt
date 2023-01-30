#!/bin/bash
# Note: adapted from Howard Pritchard's examples

source $HOME/projects/mtt/MTT-PMIX/mtt/venv/bin/activate

export PATH=/ssd/tjn/scratch/ompi-scratch/QUICK-YAK/ompi/build-std/_install/bin:$PATH

cd $HOME/projects/mtt/MTT-PMIX/mtt
export MTT_HOME=$PWD
rm -f -r test_scratch/*

echo "=========================USING THIS MPICC================"
which mpicc

#python -m trace --count -C traces -t  pyclient/pymtt.py --verbose  test_runtime_trivial.ini
pyclient/pymtt.py --verbose  test_runtime_trivial.ini


