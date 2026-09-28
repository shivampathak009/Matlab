first_matrix = input('Enter Matrix 1 (e.g.: [1 2; 3 4]): ');
second_matrix = input('Enter Matrix 2 (e.g.: [5 6; 7 8]): ');

[first_rows, first_cols] = size(first_matrix);
[second_rows, second_cols] = size(second_matrix);

fid = fopen('output.txt', 'w');

if first_cols ~= second_rows
    fprintf(fid, 'Multiplication not possible: Columns of Matrix 1 (%d) must equal Rows of Matrix 2 (%d).\n', first_cols, second_rows);
else
    for row = 1:first_rows
        for col = 1:second_cols
            product_sum = 0;
            for common = 1:first_cols
                product_sum = product_sum + first_matrix(row, common) * second_matrix(common, col);
            end
            result_manual(row, col) = product_sum;
        end
    end

    builtin_result = first_matrix * second_matrix;

    result_match = 1;
    for row = 1:first_rows
        for col = 1:second_cols
            if result_manual(row, col) ~= builtin_result(row, col)
                result_match = 0;
            end
        end
    end

    fprintf(fid, 'Manual Result:\n');
    for row = 1:first_rows
        for col = 1:second_cols
            fprintf(fid, '%d\t', result_manual(row, col));
        end
        fprintf(fid, '\n');
    end

    fprintf(fid, '\nMATLAB Built-in Result:\n');
    for row = 1:first_rows
        for col = 1:second_cols
            fprintf(fid, '%d\t', builtin_result(row, col));
        end
        fprintf(fid, '\n');
    end

    if result_match == 1
        fprintf(fid, '\nMatch Status: Both results MATCH perfectly!\n');
    else
        fprintf(fid, '\nMatch Status: Results DO NOT match.\n');
    end
end

fclose(fid);
disp('Saved to output.txt');

