#!/bin/bash
a=$1
b=$2
c=$3

t1=$(wc -l $a | cut -f1 -d ' ')
t2=$(wc -l $b | cut -f1 -d ' ')
t3=$(wc -l $c | cut -f1 -d ' ')

(($t1 > $t2)) && (($t1 > $t3)) && echo $a && exit
(($t2 > $t3)) && echo $b || echo $c
