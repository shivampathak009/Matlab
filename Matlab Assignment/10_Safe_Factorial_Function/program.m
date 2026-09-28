input = [25,0,-7,7.5];

fid = fopen('output.txt', 'w');
for i = 1:length(input)
    n = input(i);
    fprintf('Testing Input: %d\n', n);
    fprintf(fid, 'Testing Input: %d\n', n);
    value = safeFactorial(n);
    if n >= 0 && mod(n, 1) == 0
        fprintf('Factorial of %d is: %d\n\n', n, value);
        fprintf(fid, 'Result: Factorial of %d is: %d\n\n', n, value);
    else
        fprintf(fid, 'Result: Invalid Input (Rejected)\n\n');
        fprintf('\n');
    end
end

fclose(fid);
disp('Saved to output.txt');

