RNA-seq Analysis of Saccharomyces cerevisiae

# Overview

This project implements an end-to-end RNA-seq analysis pipeline, starting from raw sequencing reads and producing gene-level expression counts.

# Dataset

Accession: SRR453566

Organism: Saccharomyces cerevisiae

Sequencing type: Paired-end RNA-seq

# Pipeline Steps

Quality control using FastQC

Adapter and quality trimming using Trimmomatic

Alignment to the yeast reference genome using HISAT2

BAM sorting and indexing using SAMtools

Gene-level quantification using featureCounts

#Key Result

Overall alignment rate: 96.94%, indicating high-quality RNA-seq data and correct genome reference.

# Reproducibility

Create the conda environment:

conda env create -f environment.yml
conda activate rnaseq

# Run the pipeline:

bash scripts/rnaseq_pipeline.sh SRR453566

# Author

Yedhunandan.R

MSc Bioinformatics Student 
#GitHub: https://github.com/yedhunandanr
#Email: yedhunandanr2@gmail.com
