t = -10: 0.01: 10;
n = numel(t);
x1 = shift(0);
x2 = shift(2);
x3 = shift(-2);
x4 = scale(2);
x5 = scale(0.5);

subplot(5, 1, 1)
plot(t, x1);
axis([-5 5 -2 2]);
subplot(5, 1, 2)
plot(t, x2);
axis([-5 5 -2 2]);
subplot(5,1,3)
plot(t, x3);
axis([-5 5 -2 2]);
subplot(5,1,4)
plot(t, x4);
axis([-5 5 -2 2]);
subplot(5,1,5)
plot(t, x5);



    
        