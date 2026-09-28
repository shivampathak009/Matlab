numbers = input('Enter the array in []: ');
target = input('Enter the value to search: ');

first_index = 0;
occurrence_count = 0;

for index = 1:length(numbers)
    if numbers(index) == target
        first_index = index;
        break;
    end
end

for index = 1:length(numbers)
    if numbers(index) == target
        occurrence_count = occurrence_count + 1;
    end
end

output_file = fopen('output.txt', 'w');

if first_index > 0
    fprintf(output_file, ...
        'Value %d found at first position: %d\n', ...
        target, first_index);

    fprintf(output_file, ...
        'Total occurrences of %d: %d\n', ...
        target, occurrence_count);
else
    fprintf(output_file, ...
        'Value %d is absent in the array.\n', target);
end

fclose(output_file);

disp('Results successfully saved to output.txt');




