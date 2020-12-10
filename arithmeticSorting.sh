#!/bin/bash -x

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter a Third Number : " c
num=`echo | awk -v a=$a -v b=$b -v c=$c '{cal=a+b*c} END {print cal}'`
num2=`echo | awk -v a=$a -v b=$b -v c=$c '{cal=a*b+c} END {print cal}'`
