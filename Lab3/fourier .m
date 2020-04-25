Fs = 10;
dt = 1/Fs;
T = 4;
t = -10 : dt: 10;
k = -5:5;
nt = numel(t);
nk = numel(k);
a = zeros(nk);
x = zeros(nt);
for ik = 1:nk
    if k(ik) ~= 0
       a(ik) = -1j * (exp(1j * k(ik) * pi/2) * sin(k(ik) * pi/2))/ (k(ik)*k(ik)* pi*pi/4);
    end
end
for it = 1:nt
    sum = 0;
    for ik = 1:nk
        sum = sum + a(ik) * exp(1j * (ik - 6) * 2 * pi * t(it)/T);
    end
    x(it)= sum;
end 


subplot(2,2,1)
stem(k, real(a))
grid on;
subplot(2,2,2)
stem(k, imag(a))
grid on;
subplot(2,2,3)
plot(t, real(x))
grid on;
subplot(2,2,4)
plot(t, imag(x))
grid on;