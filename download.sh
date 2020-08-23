#!/bin/bash

mon_arr=("01" "02" "03" "04" "05" "06" "07" "08" "09" "10" "11" "12")

day_arr=("01" "02" "03" "04" "05" "06" "07" "08" "09" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" "24" "25" "26" "27" "28" "29" "30" "31")

for i in {2014..2017}
do 
  for j in ${mon_arr[@]}
  do
    for k in ${day_arr[@]}
    do
    axel -n 20 ftp://arlftp.arlhq.noaa.gov/pub/archives/gdas0p5/${i}${j}${k}_gdas0p5
    done
  done
done
