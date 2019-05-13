import numpy as np 


x = np.loadtxt("30rest.txt")
np.reshape(x, (66, 30, 1200))
print(x.shape)