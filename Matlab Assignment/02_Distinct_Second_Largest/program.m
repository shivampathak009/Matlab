arr = [28, 56, 88, 45, 65, 99, 80, 46, 77];

n = length(arr);
highest= -Inf;
second= -Inf;

for i = 1:n
    if arr(i) > highest
        highest = arr(i);
    end
end

for i = 1:n
    if arr(i) > second && arr(i) < highest
        second = arr(i);
    end
end

fid = fopen('output.txt', 'w');

fprintf(fid, 'Input Array: [ ');
for i = 1:n
    fprintf('%d ', arr(i));
    fprintf(fid, '%d ', arr(i));
end
fprintf(fid, ']\n\n');

fprintf(fid, 'Maximum Value        : %d\n', highest);

if second == -Inf
    fprintf(fid, 'Second Distinct Value: Does not exist (All elements are same)\n');
else
    fprintf(fid, 'Second Largest Value : %d\n', second);
end

fclose(fid);
fprintf('\nResult saved to output.txt\n');
