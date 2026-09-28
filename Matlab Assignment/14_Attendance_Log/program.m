attendance_file = fopen('attendance.txt', 'a');

for student_index = 1:5
    student_name = input('Enter Student Name: ', 's');

    fprintf('Select Status: 1. Present  2. Absent  3. Late\n');
    status_choice = input('Enter choice (1-3): ');

    if status_choice == 1
        attendance_status = 'Present';
    elseif status_choice == 2
        attendance_status = 'Absent';
    elseif status_choice == 3
        attendance_status = 'Late';
    else
        fprintf('Invalid choice! Setting to Absent.\n');
        attendance_status = 'Absent';
    end

    fprintf(attendance_file, ...
        'Name: %s | Status: %s\n', student_name, attendance_status);

    fprintf('Record saved!\n\n');
end

fclose(attendance_file);

fprintf('All 5 records saved to attendance.txt\n');

