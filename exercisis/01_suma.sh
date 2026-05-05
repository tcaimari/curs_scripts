#!/bin/bash

while [ $# -gt 0 ]; do
    SUMA=$ (SUMA + ${1})
    shift
    
done
echo "La suma val: ${SUMA}"