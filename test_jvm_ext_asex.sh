#!/bin/bash

i=1
for f in examples/extensions/assignexp/*.jl; do
    out=${f%.*}
    echo "Test ${i}"
    cat $f | ./JVMCompilerTest > ProgTest.j 
    java -jar jasmin.jar ProgTest.j 
    if [[ -e ${out}.input ]]; then
        java ProgTest > out < ${out}.input
    else
        java ProgTest > out
    fi
    diff -w ${out}.output out
    i=`expr $i + 1`
done

rm ProgTest.class out
