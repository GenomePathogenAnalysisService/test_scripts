git clone git@github.com:GenomePathogenAnalysisService/gpas-covid-synthetic-reads.git
cd gpas-covid-synthetic-reads

# Let's install two of the dependencies:

# gumpy which the code uses to build the genome of each sample
# constellations which contains SARS-CoV-2 lineage definitions.

git clone https://github.com/oxfordmmm/gumpy
cd gumpy
pip install -r requirements.txt
python setup.py build --force
pip install .
cd ..

git clone https://github.com/cov-lineages/constellations.git

# Now we can automatically install the rest of dependencies

pip install -r requirements.txt
pip install -e .
