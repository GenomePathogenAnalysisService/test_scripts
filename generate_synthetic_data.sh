
for tech in illumina nanopore; do
    for primer in articv3 articv4 midnight1200; do
        for snps in 4; do
            for coverage in 500; do
                for error in 1 8; do
                    for lineage in cB.1.1.7 cB.1.617.2 cB.1.1.529 cBA.1 cBA.2 cBA.3; do
                        echo "$primer : $snps - $coverage -- error: $error -- lineage $lineage"
                        gpas-covid-synreads-create.py\
                        --tech $tech\
                        --pango_definitions gpas-covid-synthetic-reads/constellations/\
                        --variant_name $lineage\
                        --primers $primer\
                        --depth $coverage\
                        --snps $snps\
                        --error_rate $error\
                        --write_fasta
                    done;
                done;
            done;
        done;
    done;
done;

ls *fastq | gzip *fastq
mkdir illumina
mkdir nanopore
mv illumina-* illumina/
mv nanopore-* nanopore/
