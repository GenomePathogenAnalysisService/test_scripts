#!/bin/bash


# Illumina
gpas-upload --token ../test_scripts/token.json --json --environment dev download ../gpas-covid-synthetic-reads/illumina/sample_names.csv --file_types fasta json --rename

gunzip *fasta.gz

gpas-covid-synreads-analyse.py --output illumina-results.csv.gz --input ../gpas-covid-synthetic-reads/illumina/sample_names.csv

mkdir "tests_illumina"

mv illumina-* tests_illumina/

