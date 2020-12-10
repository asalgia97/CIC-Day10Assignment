#!/usr/bin/bash -x

arrayIndex=0
declare -A calculateV
declare -a Arr

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter a Third Number : " c

calculateV[1]=`echo | awk -v a=$a -v b=$b -v c=$c '{cal=a+b*c} END {print cal}'`
calculateV[2]=`echo | awk -v a=$a -v b=$b -v c=$c '{cal=a*b+c} END {print cal}'`
calculateV[3]=`echo | awk -v a=$a -v b=$b -v c=$c '{cal=c+a/b} END {print cal}'`
calculateV[4]=`echo | awk -v a=$a -v b=$b -v c=$c '{cal=a%b+c} END {print cal}'`

for value in "${calculateV[@]}"
do
	Arr[$arrayIndex]=$value
	arrayIndex=$(( $arrayIndex + 1 ))
done
arrl=${#Arr[@]}


for (( i = 0 ; i <= $(( $arrl - 1 )) ; i++ ))
do
	for (( j = 0 ; j < $i ;j++ ))
	do
		if [ `echo | awk -v iVal="${Arr[$i]}" -v jVal="${Arr[$j]}" '{ if( iVal >= jVal ) print "True" ; else print "False" ;}'` == True ]
		then
		Temp=${Arr[$i]}
		Arr[$i]=${Arr[$j]}
		Arr[$j]=$Temp
		fi
	done
done

echo ${Arr[@]}
echo " Values in Ascending order : "

for (( i = $arrl-1 ; i >= 0 ; i-- ))
do
		echo ${Arr[$i]}
done
