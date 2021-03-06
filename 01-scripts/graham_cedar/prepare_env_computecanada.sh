#!/bin/bash

#example of creation of an environment containings old scipy packages

#cd $HOME
#cd DemographicInference
#module load gcc/4.8.5
module load python/2.7.14
mkdir temp
virtualenv temp
source temp/bin/activate
pip install numpy
pip install scipy-0.13.3-cp27-cp27mu-linux_x86_64.whl
#pip install -Iv https://pypi.python.org/packages/2f/12/565c08132db50a0ba34a33e0901f3d1d4d72e3b432ea828e4d87be5a4991/scipy-0.13.3.tar.gz
pip install matplotlib
python setup.py install
python -c 'from scipy import stats'
cd 01-scripts
python -c 'import dadi'
