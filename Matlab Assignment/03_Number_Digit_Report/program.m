number = input('Enter a number: ');
value = number;
digits = 0;
digits_sum = 0;
even_count = 0;
odd_count = 0;
reverser = 0;
if number < 0
  disp('numberber is Negative');
  fid = fopen('output.txt', 'w');
  fprintf(fid,'numberber is Negative');
  fclose(fid)
else
  while value > 0
    digit = mod(value, 10);
    digits = digits + 1;
    digits_sum = digits_sum + digit;
    if mod(digit, 2) == 0
        even_count = even_count + 1;
    else
        odd_count = odd_count + 1;
    end
    reverser = (reverser * 10) + digit;
    value = fix(value / 10);
   end
   if number == reverser
    number_palindrome = 'Yes';
   else
    number_palindrome = 'No';
   end

   fprintf('Original numberber: %d\n', number);
   fprintf('numberber of Digits: %d\n', digits);
   fprintf('Sum of Digits: %d\n', digits_sum);
   fprintf('Count of Even Digits: %d\n', even_count);
   fprintf('Count of Odd Digits: %d\n', odd_count);
   fprintf('Reversed numberber: %d\n', reverser);
   fprintf('Is Palindrome: %s\n', number_palindrome);

   fid = fopen('output.txt', 'w');
   fprintf(fid, 'Original numberber: %d\n', number);
   fprintf(fid, 'numberber of Digits: %d\n', digits);
   fprintf(fid, 'Sum of Digits: %d\n', digits_sum);
   fprintf(fid, 'Count of Even Digits: %d\n', even_count);
   fprintf(fid, 'Count of Odd Digits: %d\n', odd_count);
   fprintf(fid, 'Reversed numberber: %d\n', reverser);
   fprintf(fid, 'Is Palindrome: %s\n', number_palindrome);
   fclose(fid);
   disp('Results successfully written to output.txt');
end

