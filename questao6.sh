#!/bin/bash

a=$1
b=$2
c=$3

read -p "Digite a palavra proibida:" palavra

grep $palavra $a && mv $a /tmp
grep $palavra $b && mv $b /tmp
grep $palavra $c && mv $c /tmp
