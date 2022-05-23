#! /bin/bash


cd illumina/

python3 ../../gpas-covid-synthetic-reads/bin/gpas-build-uploadcsv.py --country SWE --tech illumina --tag_file ../tags.txt --uuid_length short --number_of_tags 1 > illumina.csv

gzip *fastq

cd ../nanopore/

python3  ../../gpas-covid-synthetic-reads/bin/gpas-build-uploadcsv.py --country NOR --tech nanopore --tag_file ../tags.txt --uuid_length short --number_of_tags 1 > nanopore.csv

 