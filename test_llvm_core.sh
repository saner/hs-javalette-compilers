#!/bin/bash

i=1
for f in examples/good/core*.jl; do
    out=${f%.*}
    echo "Test ${i}"
    cat $f | ./LlvmCompilerTest > ProgTest.ll 
    ../llvm/llvm-as ProgTest.ll 
    if [[ -e ${out}.input ]]; then
        ../llvm/lli ProgTest.bc > out < ${out}.input
    else
        ../llvm/lli ProgTest.bc > out
    fi
    diff -w ${out}.output out
    i=`expr $i + 1`
done

rm ProgTest.bc ProgTest.ll out
