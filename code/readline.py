'''
Author: your name
Date: 2022-01-03 12:26:34
LastEditTime: 2022-01-03 12:42:17
LastEditors: Please set LastEditors
Description: 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
FilePath: \code\readline.py
'''


import sys
result=[]
with open('surface.txt','r') as f:
	for line in f:
		result.append(list(line.strip('\n').split(',')))


print(result[1])
