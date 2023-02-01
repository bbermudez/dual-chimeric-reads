# dual-chimeric-reads

The aim of this repository is to be able to process chimeric reads resulting from sequencing experiments such as CLEAR-CLIP or CLASH in the context of two organisms. This is a problem akin to a dual RNA-Seq, but with the extra complexity of having chimeric reads.

Massive disclaimer: These tools are under construction

I am developing and testing this repo in a cluster that runs on Debian using the Sun Grid Environment (SGE), I'm still far from achieving functionality, even less so portability. Sorry for that!

## Running instructions

Cloning the repository is very standard. You will need to have git installed.

```
git clone https://github.com/bbermudez/dual-chimeric-reads.git
```

I am building this tool using a conda environment with Nextflow. Therefore you'll need to have conda installed.

Here are some instructions to create such environment. Bare in mind that you can name your environment as you like (e.g. nextflow, nf, etc)

```
conda create -n nextflow
conda activate nextflow
conda install -c conda-forge openjdk
conda install -c bioconda nextflow
```

After creating it, you just need to activate it as follows

```
conda activate nextflow
```

I set the executor to sge in a nextflow configuration file:

`process.executor = 'sge'`

If you run locally then you may omit this step, his is part of the beauty of nextflow.

**last nextflow execution I ran**

```
nextflow run process_fastq.nf -c process_fastq.config -process.echo
```

## Workflow overview


![alt text](https://github.com/bbermudez/dual-chimeric-reads/blob/main/workflow.png?raw=true)


At the moment I'm editing the script in the cluster with either nano or vim, but should



## Achievements & things tried

[x] test if the repository is accessible within the cluster

[x] set executor as sge, and run in the cluster, verify that process are executed in different nodes.

[x] test echo 'hostname' on a nextflow script. RE: This didn't work, but maybe just because I tried it outside of a process, better do within a script chunk within a process.

[x] ran nextflow with -process.echo to get prints of hostname

[x] define a process that uses the reads channel previously defined

[x] set nextflow syntax highlight on vim

[]

## TO DO (arranged from short to long term):

[] can I clone the repository into another location and delete the former one, without messing up what's online?

[] specify an input directory with parameters, how to avoid using a fixed whole path?

[] Find input file extension (fq, fastq, fq.gz or fastq.gz), can I use globbing?

[] specify an output directory with parameters

[] specify a conda environment to use within a process

[] run fastqc on all input fastq files

[] run cutadapt on all input fastq files

[] align reads to miRBase host miRNAs (mature?, hairpins?)

[] have a look at the tsv files that other nf-core pipelines such as rnaseq, chipseq or atacseq require.

...

[] make a toy example data that is packed along with the repository.

  [] a couple of read files with 100 seqs each: 10 chimeric, 50 loose srna, 30 loose target, 10 unmapped

  [] two very small genomes, decide if true genome (yeast? 12 Mb) or fake

  [] what do other tools do?

[] is there a code out there to check that a file is truly fastq?

[] make a process FindChimericReads

  [] label reads as chimeric, loose sRNA, loose target, or unmapped. The first three categories should be applied to both host and parasite.   

[] think: consequences of aligning to a mixed host & parasite sRNA db vs aligning to separate databases

[] portability: how to use docker or singularity to help the user with dependencies

[] wildest dream: include pipeline into nf-core as nf-core/dual-chimeric-reads

### notes on the process of making

fq.countFastq.view() this didn't work when tried on nf, I dunno why
