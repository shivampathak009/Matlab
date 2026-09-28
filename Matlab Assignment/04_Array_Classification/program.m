values = input('Enter a numeric array in []: ');

positive_count = 0;
negative_count = 0;
zero_count = 0;
even_count = 0;
odd_count = 0;
positive_sum = 0;
negative_sum = 0;

for index = 1:length(values)

    if values(index) > 0
        positive_count = positive_count + 1;
        positive_sum = positive_sum + values(index);

    elseif values(index) < 0
        negative_count = negative_count + 1;
        negative_sum = negative_sum + values(index);

    else
        zero_count = zero_count + 1;
    end

    if values(index) >= 0
        if mod(values(index), 2) == 0
            even_count = even_count + 1;
        else
            odd_count = odd_count + 1;
        end
    end
end

if positive_count >= negative_count && positive_count >= zero_count
    highest_category = 'Positive';

elseif negative_count >= positive_count && negative_count >= zero_count
    highest_category = 'Negative';

else
    highest_category = 'Zero';
end

fprintf('Positive Values Count: %d\n', positive_count);
fprintf('Negative Values Count: %d\n', negative_count);
fprintf('Zero Values Count    : %d\n', zero_count);
fprintf('Even Integers Count  : %d\n', even_count);
fprintf('Odd Integers Count   : %d\n', odd_count);
fprintf('Sum of Positive Values: %g\n', positive_sum);
fprintf('Sum of Negative Values: %g\n', negative_sum);
fprintf('Highest Count Category: %s\n', highest_category);

output_file = fopen('output.txt', 'w');

fprintf(output_file, 'Positive Values Count: %d\n', positive_count);
fprintf(output_file, 'Negative Values Count: %d\n', negative_count);
fprintf(output_file, 'Zero Values Count    : %d\n', zero_count);
fprintf(output_file, 'Even Integers Count  : %d\n', even_count);
fprintf(output_file, 'Odd Integers Count   : %d\n', odd_count);
fprintf(output_file, 'Sum of Positive Values: %g\n', positive_sum);
fprintf(output_file, 'Sum of Negative Values: %g\n', negative_sum);
fprintf(output_file, 'Highest Count Category: %s\n', highest_category);

fclose(output_file);

disp('Results successfully saved to output.txt');
