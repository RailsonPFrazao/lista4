#!/bin/bash
a=$1
b=$2
c=$3

t1=$(ls $a | wc -l)
t2=$(ls $b | wc -l)
t3=$(ls $c | wc -l)

(($t1 > $t2)) && (($t1 > $t3)) && echo $a && (($t2 > $t3)) && echo "$b 
$c" && exit
(($t1 > $t2)) && (($t1 > $t3)) && (($t3 > $t2)) && echo "$c 
$b" && exit
(($t2 > $t1)) && (($t2 > $t3)) && echo $b && (($t1 > $t3)) && echo "$a 
$c" && exit
(($t2 > $t1)) && (($t2 > $t3)) && (($t3 > $t1)) && echo "$c 
$a" && exit
(($t3 > $t1)) && (($t3 > $t2)) && echo $c && (($t1 > $t2)) && echo "$a 
$b" && exit
(($t3 > $t1)) && (($t3 > $t2)) && (($t2 > $t1)) && echo "$b 
$a" && exit
