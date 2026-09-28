function result = safeFactorial(n)
    if n < 0 || mod(n, 1) ~= 0
        fprintf('Error: Input %d is invalid (must be a non-negative integer).\n', n);
        result = 0;
        return;
    end
    result = 1;
    for i = 1:n
        result = result * i;
    end
end

