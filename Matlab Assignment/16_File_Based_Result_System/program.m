marks_file = fopen('marks.txt', 'r');

if marks_file == -1
    fprintf('Error: marks.txt file nahi khul saki!\n');
else
    student_data = fscanf(marks_file, '%f', [3, Inf]);
    fclose(marks_file);

    student_data = student_data';
    student_count = size(student_data, 1);

    result_file = fopen('result.txt', 'w');

    fprintf(result_file, 'Student | Sub1 | Sub2 | Sub3 | Total | Average | Status\n');

    for student_index = 1:student_count
        subject1 = student_data(student_index, 1);
        subject2 = student_data(student_index, 2);
        subject3 = student_data(student_index, 3);

        total_marks = subject1 + subject2 + subject3;
        average_marks = total_marks / 3;

        if average_marks >= 40
            result_status = 'Pass';
        else
            result_status = 'Fail';
        end

        fprintf(result_file, ...
            'Student %d | %g | %g | %g | %g | %.2f | %s\n', ...
            student_index, subject1, subject2, subject3, ...
            total_marks, average_marks, result_status);
    end

    fclose(result_file);

    fprintf('\nReport successfully written to result.txt\n');
end

