%plot f(x) = exp(-at) * cos(wt); w = 5, a = 2, 0 < t <= 10
Fs = 100;
dt = 1/Fs;
t = 0: dt: 10;
w = 5;
a = 2;
f = exp(-a * t) .* cos(w * t);
plot(t, f);