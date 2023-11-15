# -*- coding: utf-8 -*-
"""
Created on Tue Nov  7 20:11:34 2023

@author: jvask
"""

# Rename every file in a directory

import os

os.chdir('C:/Users/jvask/OneDrive/Desktop/VIVADO/fruit_model/Training_Data/Corn/')

category = 'Corn'

files = os.listdir()

for i in range(len(files)):
    os.rename(files[i], category+'_'+str(i)+'.jpg')