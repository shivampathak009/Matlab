function [p_count, neg_count, zero_count, even_count, odd_count] = classifyArray(arr)
    p_count_= 0;
    n_count = 0;
    z_count = 0;
    e_count = 0;
    o_count = 0;

    for i = 1:length(arr)
        val = arr(i);
        if val > 0
            p_count = p_count + 1;
        elseif val < 0
            n_count = n_count + 1;
        else
            z_count = z_count + 1;
        end
        if mod(val, 1) == 0
            if mod(val, 2) == 0
                e_count = e_count + 1;
            else
                o_count = o_count + 1;
            end
        end
    end
end
