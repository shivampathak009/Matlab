marks_file = fopen('student_marks.txt', 'r');

if marks_file == -1
    fprintf('Error: student_marks.txt file can not open!\n');
else
    student_scores = fscanf(marks_file, '%f');
    fclose(marks_file);

    entry_count = length(student_scores);

    [valid_marks_count, total_marks, average_mark, highest_mark, lowest_mark, passed_count, failed_count, final_status] = resultSummary(student_scores);

    report_file = fopen('final_report.txt', 'w');

    if report_file == -1
        fprintf('Error: final_report.txt file not create/write!\n');
    else
        fprintf(report_file, '\nRaw Input Marks:\n');

        for index = 1:entry_count
            fprintf('%g ', student_scores(index));
            fprintf(report_file, '%g ', student_scores(index));
        end

        fprintf(report_file, 'Total Entries Read : %d\n', entry_count);
        fprintf(report_file, 'Valid Marks Count  : %d\n', valid_marks_count);
        fprintf(report_file, 'Invalid Entries    : %d\n', entry_count - valid_marks_count);
        fprintf(report_file, 'Total Valid Marks  : %g\n', total_marks);
        fprintf(report_file, 'Average Mark       : %.2f\n', average_mark);
        fprintf(report_file, 'Highest Mark       : %g\n', highest_mark);
        fprintf(report_file, 'Lowest Mark        : %g\n', lowest_mark);
        fprintf(report_file, 'Pass Count         : %d\n', passed_count);
        fprintf(report_file, 'Fail Count         : %d\n', failed_count);
        fprintf(report_file, 'Overall Status     : %s\n', final_status);

        fclose(report_file);

        fprintf('\nReport successfully generated and saved to final_report.txt\n');
    end
end

