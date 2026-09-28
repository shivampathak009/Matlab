function [total, average, min_val, max_val] = arraySummary(arr)
    total = 0;
    n = length(arr);

    for i = 1:n
        total = total + arr(i);
    end
    average = total / n;
    min_val = arr(1);
    max_val = arr(1);

    for i = 2:n
        if arr(i) < min_val
            min_val = arr(i);
        end
        if arr(i) > max_val
            max_val = arr(i);
        end
    end
end
