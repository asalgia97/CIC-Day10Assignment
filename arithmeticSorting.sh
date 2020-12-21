#!/usr/bin/bash -x
declare -A calculateV
read -p "Enter First Number:"   a
read -p "Enter Second Number:"  b
read -p "Enter a Third Number:" c
calculateV[1]=`echo | awk -v a=$a -v b=$b -v c=$c '{cal=a+b*c} END {print cal}'`
calculateV[2]=`echo | awk -v a=$a -v b=$b -v c=$c '{cal=a*b+c} END {print cal}'`
calculateV[3]=`echo | awk -v a=$a -v b=$b -v c=$c '{cal=c+a/b} END {print cal}'`
calculateV[4]=`echo | awk -v a=$a -v b=$b -v c=$c '{cal=a%b+c} END {print cal}'`
