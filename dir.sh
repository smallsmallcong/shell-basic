#!/bin/bash

#city_arr=("beijing" "tianjin" "shijiazhuang" "tangshan" "langfang" "baoding" "cangzhou" "hengshui" "xingtai " "handan" "taiyuan" "yangquan" "changzhi" "jincheng" "jinan" "zibo" "jining" "dezhou" "liaocheng" "binzhou" "heze" "zhengzhou" "kaifeng" "anyang" "hebi" "xinxiang" "jiaozuo" "puyang")

city_74=("beijing"	"tianjin"	"shijiazhuang"	"tangshan"	"qinhuangdao"	"handan"	"xingtai"	"baoding"	"zhangjiakou"	"chengde"	"cangzhou"	"langfang"	"hengshui"	"taiyuan"	"huhehaote"	"shenyang"	"dalian"	"changchun"	"haerbin"	"shanghai"	"nanjing"	"wuxi"	"xuzhou"	"changzhou"	"suzhou_jiangsu"	"nantong"	"lianyungang"	"huaian"	"yancheng"	"yangzhou"	"zhenjiang"	"taizhou_jiangsu"	"suqian"	"hangzhou"	"ningbo"	"wenzhou"	"jiaxing"	"huzhou"	"shaoxing"	"jinhua"	"quzhou"	"zhoushan"	"taizhou_zhejiang"	"lishui"	"hefei"	"fuzhou"	"xiamen"	"nanchang"	"jinan"	"qingdao"	"zhengzhou"	"wuhan"	"changsha"	"guangzhou"	"shenzhen"	"zhuhai"	"foshan"	"jiangmen"	"zhaoqing"	"huizhou"	"dongguan"	"zhongshan"	"nanning"	"haikou"	"chongqing"	"chengdu"	"guiyang"	"kunming"	"lasa"	"xian"	"lanzhou"	"xining"	"yinchuan"	"wulumuqi"
)

 
for j in ${city_74[@]}
do

#  mkdir ./${j}/ 
##1.创建以城市名命名的文件夹 

#  mkdir ./${j}/"station"/
##2.在1的基础上，在每个城市的文件夹中创建station文件夹

#  cat ./${j}/*"2017.csv" ./${j}/*"2018.csv" > ./74city/${j}/"${j}.csv"
##3.在2的基础上将每个城市的csv合并至相应文件夹中

#  mv ../${j}/${j}.csv ../city/
#  rm -r ../${j}##删除创建的目录
done
