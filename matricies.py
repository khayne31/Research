import numpy as np
weights = np.loadtxt("weights_tract.txt") #structural
length_matrix = np.loadtxt("lengths_tract.txt")
connections = np.loadtxt("weights_surf.txt")
averages = np.loadtxt("Experiment3/averages.txt")
#all_rest = np.loadtxt("all_rest.txt", float, delimiter = ",")
all_task = np.loadtxt("all_task.txt", float, delimiter = " ") #has rest and task. USE THIS
