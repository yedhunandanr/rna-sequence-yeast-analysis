# Data

Raw sequencing data is not included in this repository due to large file size

Dataset used in this project:

* **Accession:** SRR453566
* **Organism:** *Saccharomyces cerevisiae*
* **Source:** NCBI SRA

To download the data:

```
fasterq-dump SRR453566 --split-files --threads 6
gzip SRR453566_1.fastq
gzip SRR453566_2.fastq
```

