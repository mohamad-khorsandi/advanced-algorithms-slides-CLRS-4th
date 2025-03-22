#!/bin/bash

if [ $# -ne 1 ]
then
  exit 0
fi

if [[ $1 == [0-9] ]]
then n=0$1; else n=$1
fi

if [ -f c$n-*.pdf ]
then
  evince c$n-*.pdf
fi
