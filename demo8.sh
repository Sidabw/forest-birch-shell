#!bin/bash

# 一行一行的读取文件
while read line
do
  # 并输出
  echo $line
  # 并 git clone
  git clone $line
done < bokecc-projects-all-211.log