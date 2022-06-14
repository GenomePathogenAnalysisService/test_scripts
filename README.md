# test_scripts

Scripts tp be use in the end-to-end testing of GPAS

1. download_repos.sh =>  Donwload ans intalation of the main repositores used on the tests: 

     a) gpas-covid-synthetic-reads (including gumpy and constellations
 
     b) gpas-uploader (including readAndKeep)

2. generate_synthetic_data.sh => Generate syntetic samples. The default values of synthetic data cover:

     a) Technologies: Illumina and Nanopore

     b) Primers: articv3, articv4, and midnight1200

     c) Lineages: cB.1.1.7 cB.1.617.2 cB.1.1.529 cBA.1 cBA.2 cBA.3
     
3. generate_gpas_uploader_csv.sh   => genereate csv files to illumina and nanopore ready to be used by the gpas uploader 

4. tags => tag file to be used on the tag column pf the samples' csv

5. test_illumina.sh and test_nanopore.sh => script to execute once the samples have been uplodaded and unreleased. 

6. Install gpas-covid-synthetic-reads repo

7. Create sample data optimized to test FN4
