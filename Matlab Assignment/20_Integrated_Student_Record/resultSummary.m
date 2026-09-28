function [valid_count, total, avg, max_val, min_val, pass_count, fail_count, overall_status] = resultSummary(marks)
    valid_count = 0;
    total = 0;
    max_val = -1;
    min_val = 101;
    pass_count = 0;
    fail_count = 0;

    for i = 1:length(marks)
        m = marks(i);

        if m >= 0 && m <= 100
            valid_count = valid_count + 1;
            total = total + m;

            if m > max_val
                max_val = m;
            end

            if m < min_val
                min_val = m;
            end

            if m >= 40
                pass_count = pass_count + 1;
            else
                fail_count = fail_count + 1;
            end
        end
    end

    if valid_count > 0
        avg = total / valid_count;

        if avg >= 40
            overall_status = 'PASS';
        else
            overall_status = 'FAIL';
        end
    else
        avg = 0;
        max_val = 0;
        min_val = 0;
        overall_status = 'NO VALID MARKS';
    end
end
