
function [o] = plotCifti(filen, data)


fe ='empty.dtseries.nii';
wb = 'C:\Users\Kellen\Downloads\workbench-windows64-v1.3.2\workbench\bin_windows64\wb_command';

e = ciftiopen( fe ,wb);
e.cdata = data;
o = ciftisave(e, filen, wb);

end