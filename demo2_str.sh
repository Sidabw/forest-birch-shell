#! /bin/bash
#shell 学习 —— 字符串截取

sgzzz=0123456789
#从下标1的字符开始，截取4个
echo ${sgzzz:1:4}
#从下标1的字符开始，截取到最后
echo ${sgzzz:1}
#倒数第2个字符开始，截取到最后
echo ${sgzzz:0-2}
#倒数第3个字符开始，向后截取2个
echo ${sgzzz:0-3:2}

echo '-------------------------------'

#截取指定字符串（子字符串）左边的字符
#格式1：${string%substr*} #匹配从右往左第一个substr
#格式2：${string%%substr*} #匹配从右往左最后一个substr,必须得有>=2个，不然会返回空[mac 安好...]
echo ${sgzzz%23*}
echo ${sgzzz%%23*}

#截取指定字符串（子字符串）右边的字符
#格式1：${string#*substr} #匹配从左往右第一个substr
#格式2：${string##*substr} #匹配从左往右最后一个substr
echo ${sgzzz#*23}
echo ${sgzzz##*23}

# 使用cut命令完成 split, 这个分隔符只能是一个字符...坑...
sgzzz_2=`echo ${sgzzz} | cut -d '4' -f 1`
echo ${sgzzz_2}

#来源：https://blog.csdn.net/weitp_csdn/article/details/124096633
