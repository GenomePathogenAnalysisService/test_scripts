#!/bin/bash

# base sample
gpas-covid-synreads-create.py\
 --pango_definitions constellations/\
 --variant_name cBA.1\
 --tech illumina\
 --primers articv4\
 --depth 200\
 --snps 0\
 --error_rate 2\
 --write_fasta

# identical but with dropped amplicon
gpas-covid-synreads-create.py\
 --pango_definitions constellations/\
 --variant_name cBA.1\
 --tech illumina\
 --primers articv4\
 --depth 200\
 --snps 0\
 --error_rate 2\
 --drop_amplicons 10\
 --write_fasta

# +1 SNP
gpas-covid-synreads-create.py\
 --pango_definitions constellations/\
 --variant_name cBA.1\
 --tech illumina\
 --primers articv4\
 --depth 200\
 --snps 1\
 --error_rate 2\
 --write_fasta

# +2 SNP
gpas-covid-synreads-create.py\
 --pango_definitions constellations/\
 --variant_name cBA.1\
 --tech illumina\
 --primers articv4\
 --depth 200\
 --snps 2\
 --error_rate 2\
 --write_fasta

# +3 SNP
gpas-covid-synreads-create.py\
 --pango_definitions constellations/\
 --variant_name cBA.1\
 --tech illumina\
 --primers articv4\
 --depth 200\
 --snps 3\
 --error_rate 2\
 --write_fasta

# +4 SNP
gpas-covid-synreads-create.py\
 --pango_definitions constellations/\
 --variant_name cBA.1\
 --tech illumina\
 --primers articv4\
 --depth 200\
 --snps 4\
 --error_rate 2\
 --write_fasta


gzip *fastq


