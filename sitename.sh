#!/bin/bash

###把每个城市英文的站点编号替换为中文站点名称
cd /public/home/chenxue/program/Obs_data/2019-1/
##cityfile="/public/home/chenxue/program/Obs_data/2019-1/chengdu.csv" 
sitefile="/public/home/chenxue/program/Obs_data/sites-0405.csv"
j=0

##for cityfile in $(ls ./)  #列出所有文件
for cityfile in $(ls -a |grep '.csv$')  #列出所有以csv结尾的文件

do
  cityname=$(awk -F, 'NR==2{print $2}' ${cityfile})
  ##从城市文件的第2行第2列获取城市的中文名称
  
  site_numb=($(awk -F, '$3=="'$cityname'"{print $1}' ${sitefile})) 
   ##当站点列表文件的第3列等于所获取城市的中文名称时，返回第1列站点编码，注意awk中引用cityname变量时的写法，与shell不同
  
  site_name=($(awk -F, '$3=="'$cityname'"{print $2}' ${sitefile}))
  ##当站点列表文件的第3列等于所获取城市的中文名称时，返回第2列站点中文名称

 # len=$((${#site_numb[@]}-1))
##  len=${#site_numb[@]}   ##获取site_numb数组长度
   
#  while(( j < ${len})) ##while循环单独使用时没有报错，但和前面的for循环连在一起不能运行
  for j in {1..15}   ##site_numb数组的长度都小于15，因此取1-15作为下标可以覆盖所有的站点
  do
    sed -i "s/${site_numb[${j}]}/${site_name[${j}]}/g" ./${cityfile}
    ##把当前路径下每个文件的站点编码都用站点名称替换 

  # ((j++))
  done

  echo "finish ${cityfile}"
done
