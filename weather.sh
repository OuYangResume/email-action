###
 # @Author: your name
 # @Date: 2019-12-25 17:05:25
 # @LastEditTime : 2019-12-25 20:10:06
 # @LastEditors  : Please set LastEditors
 # @Description: In User Settings Edit
 # @FilePath: /email-action/weather.sh
 ###
#!/bin/sh

set -eux

CITY=ShenZhen
LANGUAGE="zh-CN"
UNIT=m
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36"

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o $CITY.html \
   wttr.in/$CITY?format=4\&$UNIT