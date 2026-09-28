student_marks = input('Enter Student Marks: ');
[average_mark, highest_mark, passed_students, failed_students] = analyzeMarks(student_marks);

fid = fopen('result.txt', 'w');

fprintf('Input Marks: [ ');
fprintf(fid, 'Input Marks: [ ');

for index = 1:length(student_marks)
    fprintf('%g ', student_marks(index));
    fprintf(fid, '%g ', student_marks(index));
end

fprintf(fid, ']\n\n');
fprintf(fid, 'Average Valid Mark : %.2f\n', average_mark);
fprintf(fid, 'Highest Valid Mark : %g\n', highest_mark);
fprintf(fid, 'Pass Count : %d\n', passed_students);
fprintf(fid, 'Fail Count : %d\n', failed_students);

fclose(fid);

fprintf('\nSaved to result.txt\n');

