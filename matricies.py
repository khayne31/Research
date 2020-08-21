import numpy as np
import time
start_timme = time,time()
weights = np.loadtxt("weights_tract.txt") #structural
length_matrix = np.loadtxt("lengths_tract.txt")
connections = np.loadtxt("weights_surf.txt")
averages = np.loadtxt("Experiment3/averages.txt")
all_rest = np.loadtxt("all_rest.txt", float, delimiter = ",")
all_task = np.loadtxt("all_task.txt", float, delimiter = " ") #has rest and task. USE THIS


all_task = np.reshape(all_task, (66, 447, 1800))
all_task = np.swapaxes(all_task, 0 , 1)


all_rest = np.reshape(all_rest, (66, 447, 2400))
all_rest = np.swapaxes(all_rest, 0 , 1)
new_all_rest = all_rest[:, : , :1800]


all_data = np.concatenate((all_task, new_all_rest), axis = 0)
all_data.shape
end_ime