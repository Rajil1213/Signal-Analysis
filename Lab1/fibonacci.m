function [] = fibonacci(first, second, terms) 
%fibonacci function takes the first two args and generates 'term' no. of
%Fibonacci terms
    fprintf('%d %d ', first, second);
    t1 = first;
    t2 = second;
    for cnt = 3:terms
        t3 = t1 + t2;
        fprintf('%d ', t3);
        t1 = t2;
        t2 = t3;
    end
    fprintf('\n');
end

