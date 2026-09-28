stu_marks = input('Enter your stu_marks in []:');
valid_stu_marks = [];
invalid_stu_marks = [];
sum =0;
count = 0;
count_fail=0;
count_pass=0;

for i=1: length(stu_marks)
   if stu_marks(i)>=0 && stu_marks(i)<=100
     valid_stu_marks=[valid_stu_marks,stu_marks(i)];
   else
     invalid_stu_marks=[invalid_stu_marks,stu_marks(i)];
   end
end
highest=valid_stu_marks(1);
lowest=valid_stu_marks(1);
for i=1:length(valid_stu_marks)
  if valid_stu_marks(i) >=30
    count_pass = count_pass+1;
  else
    count_fail = count_fail+1;
  endif
  if valid_stu_marks(i)>highest
    highest=valid_stu_marks(i);
  end
  if valid_stu_marks(i)<lowest
    lowest = valid_stu_marks(i);
  endif
  sum = sum+valid_stu_marks(i);
end
avg = sum/length(valid_stu_marks);

fid = fopen('output.txt','w');

fprintf(fid,'Sum: %d \n',sum);
fprintf(fid,'Avrage: %d \n',avg);
fprintf(fid,'Highest: %d \n',highest);
fprintf(fid,'Lowest: %d \n',lowest);
fprintf(fid,'Total Pass Student: %d \n',count_pass);
fprintf(fid,'Total Fail Student: %d',count_fail);
fclose(fid);
disp('File created and saved all Summary');
