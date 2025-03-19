#!/bin/bash

if [ $# -ne 1 ]
then
  xelatex alg.tex
  evince alg.pdf
fi

if [[ $1 == [0-9] ]]
then n=0$1; else n=$1
fi

if [ -f c$n-*.tex ]
then
  xelatex c$n-*.tex
  evince c$n-*.pdf
fi
