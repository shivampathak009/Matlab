first_array = [16, -5, 8, 5, -6, 7, 6, 45];
second_array = [-5, -14, 9, -18, 6, -6, 8, 5];

[first_positive, first_negative, first_zero, first_even, first_odd] = classifyArray(first_array);
[second_positive, second_negative, second_zero, second_even, second_odd] = classifyArray(second_array);

fid = fopen('output.txt', 'w');

fprintf('Array 1: [ ');
fprintf(fid, 'Array 1: [ ');

for index = 1:length(first_array)
    fprintf(fid, '%d ', first_array(index));
end

fprintf(fid, ']\n');

fprintf(fid, 'Array 2: [ ');

for index = 1:length(second_array)
    fprintf(fid, '%d ', second_array(index));
end

fprintf(fid, ']\n\n');
fprintf(fid, 'Metric | Array 1 | Array 2\n');
fprintf(fid, 'Positive Count | %d | %d\n', first_positive, second_positive);
fprintf(fid, 'Negative Count | %d | %d\n', first_negative, second_negative);
fprintf(fid, 'Zero Count | %d | %d\n', first_zero, second_zero);
fprintf(fid, 'Even Count | %d | %d\n', first_even, second_even);
fprintf(fid, 'Odd Count | %d | %d\n', first_odd, second_odd);

fclose(fid);

fprintf('\nSaved to output.txt\n');

