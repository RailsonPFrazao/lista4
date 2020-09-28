#!/bin/bash

a=$1
teste=$(wc -l $a | cut -f1 -d ' ')
(($teste > 5)) && echo 'GOOD'
