%Takes in a vector length 66 and plots the resulting CIFTI file
addpath('C:\Users\Kellen\Downloads\workbench-windows64-v1.3.2\workbench\bin_windows64');
addpath('C:\Users\Kellen\Desktop\Research\Experiment3');

in_str = 'volerror.txt';
out_str = 'volerror.dtseries.nii';


wb = 'C:\Users\Kellen\Downloads\workbench-windows64-v1.3.2\workbench\bin_windows64\wb_command';
atlas_file = 'deco_parc.dlabel.nii';
atlas_cifti = ciftiopen( atlas_file ,wb);
atlas = atlas_cifti.cdata;
n_voxincifti = 91282;

data = load(in_str);

data_cifti = matrix_to_cifti(n_voxincifti ,  atlas, data);


o = plotCifti(out_str,data_cifti);
