function [avg_mark, max_mark, pass_count, fail_count] = analyzeMarks(marks)
    valid_total = 0;
    valid_count = 0;
    max_mark = -1;
    pass_count = 0;
    fail_count = 0;

    for i = 1:length(marks)
        if marks(i) >= 0 && marks(i) <= 100
            valid_total = valid_total + marks(i);
            valid_count = valid_count + 1;
            if marks(i) > max_mark
                max_mark = marks(i);
            end
            if marks(i) >= 30
                pass_count = pass_count + 1;
            else
                fail_count = fail_count + 1;
            end
        end
    end

    if valid_count > 0
        avg_mark = valid_total / valid_count;
    else
        avg_mark = 0;
        max_mark = 0;
    end
end
