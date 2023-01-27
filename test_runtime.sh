#!/bin/bash
# RUN SCRIPT for Runtime testing
# Note: adapted from Howard Pritchard's examples

source $HOME/projects/mtt/MTT-PMIX/mtt/venv/bin/activate

# Add existing OMPI/PMIX install to env
export PATH=/ssd/tjn/scratch/ompi-scratch/QUICK-YAK/ompi/build-std/_install/bin:$PATH

#export PRTE_MCA_plm=ssh
#export OMPI_MCA_btl=self,sm,tcp

# Change to topdir of MTT checkout and set MTT_HOME
cd $HOME/projects/mtt/MTT-PMIX/mtt
export MTT_HOME=$PWD

# Remove previous test runs
rm -f -r test_scratch/*

echo "=========================USING THIS MPICC================"
which mpicc

# Run pymtt.py from topdir of MTT_HOME
pyclient/pymtt.py --verbose  test_runtime.ini

#grep FAIL test_scratch/mttresults.txt
#grep OUT test_scratch/mttresults.txt

