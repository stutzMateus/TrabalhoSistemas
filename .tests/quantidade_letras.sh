#!/bin/bash

if [[ ! -f ./mensagens.txt ]]; then
	exit 1
fi

if [[ ! -f ./letras.txt ]]; then
	exit 1
fi

expected=`grep -o 'a' ./mensagens.txt | wc -l | cut -f1 -d" "`

echo "Expected: $expected"

real=`grep -E [0-9]+ ./letras.txt`

echo "Returned: $real"

if [[ ${real} -eq ${expected} ]]; then 

	exit 0

else 

	exit 1
	
fi

