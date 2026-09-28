test_arrays = {[14, -8, 60, 0, -20, 40], [-78, -47, -7, -8, -20]};

fid = fopen('output.txt', 'w');

for case_num = 1:length(test_arrays)
    current_array = test_arrays{case_num};

    fprintf(fid, 'Test Case %d Input Array: [ ', case_num);

    for index = 1:length(current_array)
        fprintf('%d ', current_array(index));
        fprintf(fid, '%d ', current_array(index));
    end

    fprintf(fid, ']\n');

    [sum_value, mean_value, minimum_value, maximum_value] = arraySummary(current_array);

    fprintf(fid, 'Total   : %d\n', sum_value);
    fprintf(fid, 'Average : %.2f\n', mean_value);
    fprintf(fid, 'Minimum : %d\n', minimum_value);
    fprintf(fid, 'Maximum : %d\n\n', maximum_value);
end

fclose(fid);

fprintf('\nSaved to output.txt\n');

