#!/bin/bash -x

   echo "welcome to flip coin combination code"
   
   #stimulate a coin flip
   if [[ $((RANDOM%2)) -eq 1 ]]
   then
     echo "its head's"
   else
     echo "its tails"
   fi
   #stimulate the coin flip and store singlet combinations
   declare -A coinflip
   read -p "how many times do you want to flip coin :" number
   counter=0
   coinflip[H]=0
   coinflip[T]=0
   while (( $counter != $number ))
   do
   if [[ $((RANDOM%2)) -eq 1 ]]
   then 
        coinflip[H]=$((coinflip[H]+1))
   else
       coinflip[T]=$((coinflip[T]+1))
   fi
   counter=$(($counter+1))
   done
   echo "${coinflip[H]} $number"|awk '{print $1/$2}'
   echo "${coinflip[T]} $number"|awk '{print $1/$2}'

