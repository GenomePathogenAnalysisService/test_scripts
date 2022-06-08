#!/bin/bash


#Nanopore
gpas-upload --token ../test_scripts/token.json --json --environment dev download ../gpas-covid-synthetic-reads/nanopore/sample_names.csv --file_types fasta json --rename

gpas-covid-synreads-analyse.py --output nanopore-results.csv.gz --input ../gpas-covid-synthetic-reads/nanopore/sample_names.csv

mkdir "tests_nanopore"

mv nanopore-* tests_nanopore/
