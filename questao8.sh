#!/bin/bash

cat a.txt | tr '.' ',' | sort | grep -v "x" 

(($? == 0)) && echo "Sucesso" || echo "Falha"

