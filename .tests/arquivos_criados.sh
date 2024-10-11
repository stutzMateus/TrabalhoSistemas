#!/bin/bash

for index in $(seq 1 3); do

	if [[ ! -f mensagem${index}.txt ]]; then 
	
		exit 1
		
	fi

done

# arquivos existem

exit 0
