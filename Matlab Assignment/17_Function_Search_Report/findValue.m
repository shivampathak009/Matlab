function [idx, total_count] = findValue(arr, target)
    idx = -1;
    total_count = 0;

    for i = 1:length(arr)
        if arr(i) == target
            total_count = total_count + 1;

            if idx == -1
               idx = i;
            end
        end
    end
end
