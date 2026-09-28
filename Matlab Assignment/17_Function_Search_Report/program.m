numbers_file = fopen('numbers.txt', 'r');

if numbers_file == -1
    fprintf('Error: numbers.txt file can not open!\n');
else
    values = fscanf(numbers_file, '%f');
    fclose(numbers_file);

    search_value = 42;

    [first_index, occurrence_count] = findValue(values, search_value);

    output_file = fopen('output.txt', 'w');

    fprintf('Array: [ ');
    fprintf(output_file, 'Array: [ ');

    for index = 1:length(values)
        fprintf(output_file, '%g ', values(index));
    end

    fprintf(output_file, ']\n\n');

    fprintf(output_file, 'Target Value     : %g\n', search_value);
    fprintf(output_file, 'First Index      : %d\n', first_index);
    fprintf(output_file, 'Total Occurrence : %d\n', occurrence_count);

    fclose(output_file);

    fprintf('\nSearch results saved to output.txt\n');
end

