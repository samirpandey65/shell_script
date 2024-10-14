#!/bin/bash
read -p "Enter gabber dialogue" gb
read -p "Enter thakur dialogue" th
read -p "Kitne aadmi the" admi
echo "$gb"
echo "$th"
echo "Total aadmin $admi"
if [ $th = "nahi" ];
then 
 echo "Jay and Viru save the thakur"
elif [ $admi -ge 2 ]
then 
 echo "Lest go"
else
 echo "Gabbar cut the thakur hand"
fi
echo "Movies end"
