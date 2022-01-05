'''
Author: your name
Date: 2022-01-03 12:46:40
LastEditTime: 2022-01-03 12:48:59
LastEditors: your name
Description: 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
FilePath: \codec:\Users\UIC\Documents\WeChat Files\wxid_1ioezmjboapq21\FileStorage\File\2022-01\test.py
'''
import os
from sklearn.decomposition import PCA
import pandas as pd
import numpy as np


# PCA



# ------load obj fils

def pointArray(directory_name):
    nameList = ['surface.txt']
    # for item in os.listdir(directory_name):
    #     if item.endswith('txt'):
    #         nameList.append(item)

    print('Number of object files: ', len(nameList))
    # print(nameList)
    wholePoints = []
    for i in range(0, len(nameList)):
        objFilePath = directory_name + '/' + nameList[i]
        with open(objFilePath) as file:
            points = []
            while 1:
                line = file.readline()
                if not line:
                    break
                strs = line.split()
                
                points.append(float(strs[0]))
                points.append(float(strs[1]))
                points.append(float(strs[2]))
                points.append(float(strs[4]))
                points.append(float(strs[5]))
                points.append(float(strs[6]))
            # print(points)
            wholePoints.append(points)
        if i % 10 == 0:
            print(i, '/', len(nameList))
    print('Length of wholePoints: ', len(wholePoints))

    return wholePoints


PATH = '.'
wholePoints = pointArray(PATH)
points=np.array(wholePoints).reshape(-1,6)
original=points[:,0:3]
deform=points[:,3:6]*100000
deformed_mesh = original+deform
np.savetxt('myMesh.txt', deformed_mesh)
