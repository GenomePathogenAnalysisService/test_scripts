#! /bin/bash

cd illumina


gpas-build-uploadcsv.py --country SWE --tech illumina --tag_file ../test_scripts/tags.txt --uuid_length short --number_of_tags 1 > illumina.csv


cd ../nanopore/

gpas-build-uploadcsv.py --country NOR --tech nanopore --tag_file ../test_scripts/tags.txt --uuid_length short --number_of_tags 1 > nanopore.csv

