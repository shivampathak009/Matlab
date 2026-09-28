matrix_file = fopen('matrix.txt', 'r');

if matrix_file == -1
    fprintf('Error: matrix.txt file can not open!\n');
else
    row_count = 3;
    column_count = 4;

    matrix_data = fscanf(matrix_file, '%f', [column_count, row_count]);
    fclose(matrix_file);

    matrix = matrix_data';

    minimum_value = matrix(1, 1);
    minimum_row = 1;
    minimum_column = 1;

    maximum_value = matrix(1, 1);
    maximum_row = 1;
    maximum_column = 1;

    for row_index = 1:row_count
        for column_index = 1:column_count
            if matrix(row_index, column_index) < minimum_value
                minimum_value = matrix(row_index, column_index);
                minimum_row = row_index;
                minimum_column = column_index;
            end

            if matrix(row_index, column_index) > maximum_value
                maximum_value = matrix(row_index, column_index);
                maximum_row = row_index;
                maximum_column = column_index;
            end
        end
    end

    row_totals = zeros(row_count, 1);
    greatest_sum = -Inf;
    selected_row = 1;

    for row_index = 1:row_count
        row_total = 0;

        for column_index = 1:column_count
            row_total = row_total + matrix(row_index, column_index);
        end

        row_totals(row_index) = row_total;

        if row_total > greatest_sum
            greatest_sum = row_total;
            selected_row = row_index;
        end
    end

    output_file = fopen('output.txt', 'w');

    for row_index = 1:row_count
        for column_index = 1:column_count
            fprintf('%g\t', matrix(row_index, column_index));
            fprintf(output_file, '%g\t', matrix(row_index, column_index));
        end

        fprintf('\n');
        fprintf(output_file, '\n');
    end

    fprintf(output_file, ...
        'Minimum Value : %g at Position (%d, %d)\n', ...
        minimum_value, minimum_row, minimum_column);

    fprintf(output_file, ...
        'Maximum Value : %g at Position (%d, %d)\n', ...
        maximum_value, maximum_row, maximum_column);

    for row_index = 1:row_count
        fprintf(output_file, ...
            'Row %d Sum : %g\n', row_index, row_totals(row_index));
    end

    fprintf(output_file, ...
        '\nHighest Row Sum : %g (Row %d)\n', ...
        greatest_sum, selected_row);

    fclose(output_file);

    fprintf('\nAnalysis saved to output.txt\n');
end

