data_matrix = input('Enter a matrix (e.g., [1 2 3; 8 5 2; 4 5 7]): ');
[row_count, col_count] = size(data_matrix);
highest_sum = -inf;
highest_row = 0;

fileID = fopen('output.txt', 'w');
for row_index = 1:row_count
    row_total = 0;
    row_largest = data_matrix(row_index, 1);

    for col_index = 1:col_count
        element = data_matrix(row_index, col_index);
        row_total = row_total + element;

        if element > row_largest
            row_largest = element;
        end
    end

    row_average = row_total / col_count;
    fprintf(fileID, 'Row %d: Sum: %d, Average: %d, Maximum: %d\n', row_index, row_total, row_average, row_largest);

    if row_total > highest_sum
        highest_sum = row_total;
        highest_row = row_index;
    end
end

fprintf(fileID, '\nRow with Highest Row-Sum is Row: %d\n', highest_row);

fclose(fileID);
disp('Results successfully saved to output.txt');

