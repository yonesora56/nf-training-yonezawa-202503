#!/usr/bin/env nextflow
/* https://training.nextflow.io/latest/hello_nextflow/01_hello_world/#12-the-process-definition
/*
 * Use echo to print 'Hello World!' to a file
 */
process sayHello {

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
