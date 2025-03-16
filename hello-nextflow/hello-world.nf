#!/usr/bin/env nextflow
/* https://training.nextflow.io/latest/hello_nextflow/01_hello_world/#12-the-process-definition
/*
 * Use echo to print 'Hello World!' to a file
 */
process sayHello {

    // publishDir を追加
    // https://www.nextflow.io/docs/latest/reference/process.html#publishdir
    publishDir 'results', mode: 'copy', overwrite: false

    output:
        path 'output.txt'

    script:
    """
    echo 'Hello World!' > output.txt
    """
}

workflow {

    // emit a greeting
    sayHello()
}
