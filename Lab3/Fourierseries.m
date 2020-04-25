Fs = 100;
dt = 1/Fs;
T = 4;
t = -10 : dt: 10;
s1 = 5;
s2 = 25;
s3 = 500;
k1 = 1:(1 + s1);
k2 = 1:(1 + s2);
k3 = 1:(1 + s3);
nt = numel(t);
nk1 = numel(k1);
nk2 = numel(k2);
nk3 = numel(k3);
a1 = zeros(nk1);
a2 = zeros(nk2);
a3 = zeros(nk3);
a1(1) = 1/2;
a2(1) = 1/2;
a3(1) = 1/2;
x1 = zeros(nt);
x2 = x1;
x3 = x2;
for ik1 = 2:nk1
       a1(ik1) = 2 * sin( ik1 * 2 * pi/T)/(pi * ik1); 
end
for ik2 = 2:nk2
       a2(ik2) = 2 * sin( ik2 * 2 * pi/T)/(pi * ik2); 
end
for ik3 = 2:nk3
       a3(ik3) = 2 * sin( ik3 * 2 * pi/T)/(pi * ik3); 
end
for it = 1:nt
    sum1 = 0;
    sum2 = 0;
    sum3 = 0;
    
    for ik1 = 1:nk1
        sum1 = sum1 + a1(ik1) * cos(ik1 * 2*pi*t(it)/T);
    end
    for ik2 = 1:nk2
        sum2 = sum2 + a2(ik2) * cos(ik2 * 2*pi*t(it)/T);
    end
    for ik3 = 1:nk3
        sum3 = sum3 + a3(ik3) * cos(ik3 * 2*pi*t(it)/T);
    end
    x1(it)= sum1 + a1(1);
    x2(it)= sum2 + a2(1);
    x3(it)= sum3 + a3(1);
end 


subplot(2,2,1)
stem(k3, a3)
grid on;
axis([-1 100 0 0.7])
subplot(2,2,2)
plot(t, x1)
grid on;
axis([-1.5 1.5 0 2])
subplot(2,2,3)
plot(t, x2)
grid on;
axis([-1.5 1.5 0 2])
subplot(2,2,4)
plot(t, x3)
grid on;
axis([-1.5 1.5 0 2])
