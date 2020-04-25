function y = factorial(N)
    if N <= 1
        y = 1;
    else
        y = N * factorial(N - 1);
    end
end

