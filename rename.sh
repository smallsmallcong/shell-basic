#!/bin/bash

##替换目标路径下城市数据文件的站点名称，效率很低
cd /public/home/chenxue/program/Obs_data/2019-1
site_num=($(awk -F, '{print $1; }' /public/home/chenxue/program/Obs_data/sites-0405.csv))
site_name=($(awk -F, '{print $2; }' /public/home/chenxue/program/Obs_data/sites-0405.csv))

for j in {1..1658}
do 
  sed -i "s/${site_num[${j}]}/${site_name[${j}]}/g" *.csv
done



