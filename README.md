# dual-chimeric-reads

The aim of this repository is to be able to process chimeric reads resulting from sequencing experiments such as CLEAR-CLIP or CLASH in the context of two organisms. This is a problem akin to a dual RNA-Seq, but with the extra complexity of having chimeric reads.

Disclaimer: These tools are under construction

I am building this tools using a conda environment with Nextflow.

nextflow configuration:

`process.executor = 'sge'`


## TO DO (arranged from short to long term):

[x] Can I clone the repo within the cluster? RE: Yes, you can

[x] test echo 'hostname' on a nextflow script, set executor as sge. RE: This didn't work, but maybe just because I tried it outside of a process, better do within a script chunk within a process.

[] define a process that uses the fq channel previously defined


...


[] think of portability, how to use docker to help the user

[] wildest dream: include pipeline into nf-core as nf-core/dual-chimeric-reads

### notes on the process of making

fq.countFastq.view() this didn't work when tried on nf, I dunno why
