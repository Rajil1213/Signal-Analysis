%plot f(x) = (x^2 + 2x + 3)/(x + 3) for 0<x<=100
Fs = 10;
dt = 1/Fs;
x = 0:dt:100;
f = (x .* x + 2 * x + 3) ./ (x + 3);

plot(x, f);
