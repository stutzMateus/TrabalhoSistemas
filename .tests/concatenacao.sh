#!/bin/bash

if [[ ! -f mensagem1.txt ]] || [[ `wc -c mensagem1.txt | cut -f1 -d" "` -lt 10 ]]; then
	exit 1
fi

if [[ ! -f mensagem2.txt ]] || [[ `wc -c mensagem2.txt | cut -f1 -d" "` -lt 10 ]]; then
	exit 1
fi

if [[ ! -f mensagem3.txt ]] || [[ `wc -c mensagem3.txt | cut -f1 -d" "` -lt 10 ]]; then
	exit 1
fi

cat mensagem1.txt mensagem2.txt mensagem3.txt > ./teste_concatenacao.txt

if [[ `diff -q ./mensagens_antiga.txt ./teste_concatenacao.txt` == "" ]]; then 

	exit 0

else

	exit 1

fi


