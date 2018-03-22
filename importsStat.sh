#!/bin/bash
# 统计import最多的github.com第三方库
sh findImports.sh > temp_data
sort temp_data | uniq -c | sort -r
rm temp_data
