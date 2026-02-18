# Reference Genome

The reference genome and annotation files are not stored in this repository due to size.

This project uses:

* **Genome:** Saccharomyces cerevisiae R64-1-1
* **Annotation:** Ensembl release 111 GTF

Download commands:

```
wget https://ftp.ensembl.org/pub/release-111/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.toplevel.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.toplevel.fa.gz

hisat2-build Saccharomyces_cerevisiae.R64-1-1.dna.toplevel.fa sacCer3

wget https://ftp.ensembl.org/pub/release-111/gtf/saccharomyces_cerevisiae/Saccharomyces_cerevisiae.R64-1-1.111.gtf.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.111.gtf.gz
```

