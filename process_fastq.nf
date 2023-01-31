nextflow.enable.dsl=2

// print the name of the processing node
// echo 'hostname'

fq = Channel.fromPath("/data/buck/abuck_smallrna/analyses/2021-11-16_exWAGO_EV_in_out/00.fastq_with_adapter.trial/EVs*.fastq.gz", checkIfExists: true)
// fq holds the fastq reads to analyze
// WARNING: it is considered bad practice to set complete paths, this will need to be fixed later on

fq.view()
