###
 # @Author: oouyang
 # @Date: 2019-12-25 17:05:25
 # @LastEditTime : 2019-12-25 22:45:48
 # @LastEditors  : Please set LastEditors
 # @Description: 获取各个城市的天气并生成对应城市的文件
 # @FilePath: /email-action/weather.sh
 ###
#!/bin/sh

set -eux

# 城市列表
CITY=(ShenZhen WuHan YiChun)
# 语言
LANGUAGE="zh-CN"
# 单位
UNIT=m 
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36"

# curl \
#   -H "Accept-Language: $LANGUAGE" \
#   -H "User-Agent: $UA" \
#   -o ${CITY[0]}.html \
#    wttr.in/${CITY[0]}?format=4\&$UNIT

# curl \
#   -H "Accept-Language: $LANGUAGE" \
#   -H "User-Agent: $UA" \
#   -o ${CITY[1]}.html \
#    wttr.in/${CITY[1]}?format=4\&$UNIT


for item in ShenZhen WuHan YiChun NanChang
do
    curl \
      -H "Accept-Language: $LANGUAGE" \
      -H "User-Agent: $UA" \
      -o $item.json \
       wttr.in/$item?format="%l:+%C+%c+%t"\&$UNIT
done