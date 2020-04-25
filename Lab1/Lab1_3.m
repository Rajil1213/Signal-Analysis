%plot y = 3e^x
Fs = 10;
dt = 1/Fs;
x = 0: dt: 10;
y = 3 * exp(x);

plot(x, y);