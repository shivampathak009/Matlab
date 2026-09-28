data = input('Enter a matrix (e.g.: [-78 -7 -8; -20 -3 -75]): ');
[row_count, col_count] = size(data);
largest_value = data(1, 1);
largest_row = 1;
largest_col = 1;

for row = 1:row_count
    for col = 1:col_count
        if data(row, col) > largest_value
            largest_value = data(row, col);
            largest_row = row;
            largest_col = col;
        end
    end
end

fid = fopen('output.txt', 'w');
fprintf(fid, 'Maximum Element: %d\n', largest_value);
fprintf(fid, '1-Based Position: Row %d, Column %d\n', largest_row, largest_col);
fclose(fid);

disp('Results successfully saved to output.txt');

