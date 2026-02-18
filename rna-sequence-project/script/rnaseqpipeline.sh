#!/bin/bash

# Activate conda environment
conda activate rnaseq

# Quality control
fastqc *.fastq.gz -o results/fastqc

# Trimming
trimmomatic PE -threads 6 \
$1_1.fastq.gz $1_2.fastq.gz \
$1_1_paired.fastq.gz $1_1_unpaired.fastq.gz \
$1_2_paired.fastq.gz $1_2_unpaired.fastq.gz \
ILLUMINACLIP:$CONDA_PREFIX/share/trimmomatic/adapters/TruSeq3-PE.fa:2:30:10 \
SLIDINGWINDOW:4:20 MINLEN:36

# Alignment
hisat2 -p 6 -x reference/sacCer3 \
-1 $1_1_paired.fastq.gz \
-2 $1_2_paired.fastq.gz \
-S aligned.sam

# BAM processing
samtools view -bS aligned.sam > aligned.bam
samtools sort aligned.bam -o aligned_sorted.bam
samtools index aligned_sorted.bam

# Gene counting
featureCounts -T 6 \
-a reference/Saccharomyces_cerevisiae.R64-1-1.111.gtf \
-o results/gene_counts.txt \
aligned_sorted.bam

