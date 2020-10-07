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
   #stimulate coin flip and stare double combinations
   coinflip[HH]=0
   coinflip[TT]=0
   coinflip[TH]=0
   coinflip[HT]=0
   counter=0
   while (( $counter != $number ))
   do
   if [[ $((RANDOM%2)) -eq 1 ]]
   then
       if [[ $((RANDOM%2)) -eq 1 ]]
       then
         coinflip[HH]=$((coinflip[HH]+1))
       else
         coinflip[HT]=$((coinflip[HT]+1))
       fi
   else
      if [[ $((RANDOM%2)) -eq 1 ]]
      then
       coinflip[TH]=$((coinflip[TH]+1))
      else
       coinflip[TT]=$((coinflip[TT]+1))
      fi
   fi
   counter=$(($counter+1))
   done
   #store the triplet combinations
   coinflip[HHH]=0
   coinflip[TTT]=0
   coinflip[TTH]=0
   coinflip[THT]=0
   coinflip[HTT]=0
   coinflip[HHT]=0
   coinflip[THH]=0
   coinflip[HTH]=0
   counter=0
   while (( $counter != $number ))
   do
   if [[ $((RANDOM%2)) -eq 1 ]]
   then
       if [[ $((RANDOM%2)) -eq 1 ]]
       then
         if [[ $((RANDOM%2)) -eq 1 ]]
         then
           coinflip[HHH]=$((coinflip[HH]+1))
         else
           coinflip[HHT]=$((coinflip[HHT]+1))
        fi
       else
          if [[ $((RANDOM%2)) -eq 1 ]]
          then
             coinflip[HTH]=$((coinflip[HTH]+1))
          else
             coinflip[HTT]=$((coinflip[HTT]+1))
          fi
       fi
   else
      if [[ $((RANDOM%2)) -eq 1 ]]
      then
        if [[ $((RANDOM%2)) -eq 1 ]]
         then
           coinflip[THH]=$((coinflip[THH]+1))
        else
           coinflip[THT]=$((coinflip[THT]+1))
        fi
      else
       if [[ $((RANDOM%2)) -eq 1 ]]
       then
        coinflip[TTH]=$((coinflip[TTH]+1))
       else
         coinflip[TTT]=$((coinflip[TTT]+1))
       fi
      fi
   fi
   counter=$(($counter+1))
   done
   echo "${!coinflip[@]} ${coinflip[@]}"

   
