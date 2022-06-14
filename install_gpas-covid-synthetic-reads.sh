#!/bin/bash

git clone git@github.com:GenomePathogenAnalysisService/gpas-covid-synthetic-reads.git
cd gpas-covid-synthetic-reads
git clone https://github.com/oxfordmmm/gumpy
cd gumpy
pip install -r requirements.txt
python setup.py build —force
pip install .
cd ..
git clone https://github.com/cov-lineages/constellations.git
pip install -r requirements.txt
pip install -e .
