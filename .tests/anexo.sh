#!/bin/bash

TEST_FILE="./mensagens_antiga.txt"
CHECK_FILE="./mensagens.txt"

if [[ ! -f "${TEST_FILE}" ]]; then

	exit 1;

fi

if [[ ! -f "${CHECK_FILE}" ]]; then

	exit 1;

fi



nlines_test=`wc -l $TEST_FILE | cut -f1 -d " "`

echo $nlines_test

nlines_check=`wc -l $CHECK_FILE | cut -f1 -d " "`

echo $nlines_check

if [[ $nlines_test -le $nlines_check ]]; then 
	exit 0
else
	exit 1
fi

