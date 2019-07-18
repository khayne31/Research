restoredefaultpath
wb = 'C:\Users\Kellen\Downloads\workbench-windows64-v1.3.2\workbench\bin_windows64\wb_command'
addpath 'C:\Program Files\MATLAB\R2019a\toolbox\fieldtrip'
addpath 'C:\Users\Kellen\Downloads\cifti-matlab-master\cifti-matlab-master'
ft_defaults
atlas = ciftiopen('deco_parc.dlabel.nii', wb);
myelin = ciftiopen('Mean.339.MyelinMap_BC_MSMAll.32k_fs_LR.dscalar.nii', wb);


myelin_avg = zeros(66,1);
myelin_64k = zeros(59412,1);
average = zeros(66,1);

for i = 1:66
    indx = find(atlas.cdata == i);
    myelin_avg(i) = mean(myelin.cdata(indx));
    average(i) = myelin_avg(i);
    myelin_64k(indx) = myelin_avg(i);
end

fileID = fopen("averages.txt", "w");
fprintf(fileID,"%5.4f \n", average);
fclose(fileID);
plotCifti('avg_myelin.dtseries.nii', myelin_64k);





    