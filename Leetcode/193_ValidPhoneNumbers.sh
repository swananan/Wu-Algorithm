#!/bin/sh
#将(xxx) xxx-xxxx or xxx-xxx-xxxx. (x代表数字)格式的电话号码从输入文件file.txt中保留下来
#使用正则表达式
#方法一，使用grep
grep -E '^(\([0-9]{3}\) |[0-9]{3}-)[0-9]{3}-[0-9]{4}$' file.txt 
#方法二，使用sed
sed -n -E '/^(\([0-9]{3}\) |[0-9]{3}-)[0-9]{3}-[0-9]{4}$/p' file.txt
#方法二，使用awk
awk '/^(\([0-9]{3}\) |[0-9]{3}-)[0-9]{3}-[0-9]{4}$/' file.txt