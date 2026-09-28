numbers = input('Enter a numeric array in []: ');
positive_count = 0;
positive_sum = 0;

for index = 1:length(numbers)
    if numbers(index) <= 0
        continue;
    end
    positive_count = positive_count + 1;
    positive_sum = positive_sum + numbers(index);
end

fid = fopen('output.txt', 'w');
if positive_count > 0
    positive_average = positive_sum / positive_count;
    fprintf(fid, 'Count of Positive Values: %d\n', positive_count);
    fprintf(fid, 'Sum of Positive Values  : %d\n', positive_sum);
    fprintf(fid, 'Average of Positive Values: %.2f\n', positive_average);
else
    message = 'No positive values exist in the given array.';
    fprintf('%s\n', message);
    fprintf(fid, '%s\n', message);
end

fclose(fid);
disp('Saved to output.txt');

