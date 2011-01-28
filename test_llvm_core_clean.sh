#!/bin/bash

i=1
for f in examples/good/core*.jl; do
    out=${f%.*}
    echo "Test ${i}"
    cat $f | ./LlvmCompilerTest > ProgTest.ll 
    llvm-as ProgTest.ll 
    if [[ -e ${out}.input ]]; then
        lli ProgTest.bc > out < ${out}.input
    else
        lli ProgTest.bc > out
    fi
    diff -w ${out}.output out
    i=`expr $i + 1`
done

rm ProgTest.bc ProgTest.ll out
