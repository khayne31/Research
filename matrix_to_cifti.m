function [ data_out ] = matrix_to_cifti(n_vox, atlas, data )
%takes a matrix in deco's or whatever representation in atlas
%and converts it into a cifti file

[n_parc, n_time] = size(data);
data_out = zeros(n_vox, n_time);

for i = 1:n_parc
    p = find(atlas == i);
    n_in_i = length(p);
    for j = 1:n_in_i
       data_out(p(j),:) = data(i,:);
    end
end

end

