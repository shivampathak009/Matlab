file_input = fopen('input.txt', 'r');

if file_input == -1
    fprintf('Error: input.txt file can not open!\n');
else
    values = fscanf(file_input, '%f');
    fclose(file_input);

    element_count = length(values);

    sum_value = 0;
    minimum_value = values(1);
    maximum_value = values(1);
    positive_count = 0;
    negative_count = 0;
    zero_count = 0;

    for index = 1:element_count
        current_value = values(index);

        sum_value = sum_value + current_value;

        if current_value > minimum_value
        else
            minimum_value = current_value;
        end

        if current_value > maximum_value
            maximum_value = current_value;
        end

        if current_value > 0
            positive_count = positive_count + 1;
        elseif current_value < 0
            negative_count = negative_count + 1;
        else
            zero_count = zero_count + 1;
        end
    end

    mean_value = sum_value / element_count;

    file_output = fopen('output.txt', 'w');

    for index = 1:element_count
        fprintf(file_output, '%d \n', values(index));
    end
    fprintf(file_output, 'Total Elements : %d\n', element_count);
    fprintf(file_output, 'Positive Count : %d\n', positive_count);
    fprintf(file_output, 'Negative Count : %d\n', negative_count);
    fprintf(file_output, 'Zero Count     : %d\n', zero_count);
    fprintf(file_output, 'Sum            : %d\n', sum_value);
    fprintf(file_output, 'Average        : %.2f\n', mean_value);
    fprintf(file_output, 'Minimum        : %d\n', minimum_value);
    fprintf(file_output, 'Maximum        : %d\n', maximum_value);
    fclose(file_output);
    fprintf('\nAnalysis successfully saved to output.txt\n');
end

