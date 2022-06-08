#! /bin/bash

cd gpas-covid-synthetic-reads

cd illumina

gpas-build-uploadcsv.py --country SWE --tech illumina --tag_file ../../test_scripts/tags.txt --uuid_length short --number_of_tags 1 > illumina.csv

gzip *fastq

cd ../nanopore/

gpas-build-uploadcsv.py --country NOR --tech nanopore --tag_file ../../test_scripts/tags.txt --uuid_length short --number_of_tags 1 > nanopore.csv

gzip *fastq

cd ..


