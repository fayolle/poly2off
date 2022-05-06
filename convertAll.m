filenames = {'disk', 'disk_scaled', 'disk_shifted', ...
    'disk_shifted_scaled', 'L', 'riderr', 'riderr_unit', ...
    'riderr_unit_shifted', 'ring', 'square', 'square_scaled', ...
    'square_shifted', 'square_with_hole', 'U'};

nf = numel(filenames);
for i=1:nf
    fprintf('Converting %s to OFF\n', filenames{i});
    main(['poly/' filenames{i}], ['off/' filenames{i}]);
end
