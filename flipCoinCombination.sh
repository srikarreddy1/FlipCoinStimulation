#!/bin/bash -x

   echo "welcome to flip coin combination code"
   
   #stimulate a coin flip
   if [[ $((RANDOM%2)) -eq 1 ]]
   then
     echo "its head's"
   else
     echo "its tails"
   fi
