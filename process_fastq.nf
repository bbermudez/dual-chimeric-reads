nextflow.enable.dsl=2

// print the name of the processing node
// echo 'hostname'

params.reads = "/data/buck/abuck_smallrna/analyses/2021-11-16_exWAGO_EV_in_out/00.fastq_with_adapter.trial/EVs*.fastq.gz"
// WARNING: it is considered bad practice to set complete paths, this will need to be fixed later on

process FASTQC {
    tag "FASTQC on $reads"

    input:
    path(reads)

    output:
    stdout

    script:
    """
    echo 'Hello world!'
    hostname
    printf '${reads}'
    """
}

workflow {
    reads = Channel.fromPath(params.reads, checkIfExists: true)
    FASTQC(reads)
}
