import numpy as np 
import os
import sys


pwd = os.getcwd()
ids = np.loadtxt(pwd + "\\ids.txt", dtype = 'int64')
path = 'keilholz-lab/Amrit/HCP_DATA_BN_atlas'

for subdir, dirs, files in os.walk(pwd):
	print(subdir , len(files))
	sys.stdout.flush()

