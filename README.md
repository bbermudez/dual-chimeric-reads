# dual-chimeric-reads

The aim of this repository is to be able to process chimeric reads resulting from sequencing experiments such as CLEAR-CLIP or CLASH in the context of two organisms. This is a problem akin to a dual RNA-Seq, but with the extra complexity of having chimeric reads.

Disclaimer: These tools are under construction

I am building this tools using a conda environment with Nextflow.

nextflow configuration:

`process.executor = 'sge'`


TO DO:

[] test echo 'hostname' on a nextflow script, set executor as sge.

[] test echo 'hostname' on a nextflow script.
