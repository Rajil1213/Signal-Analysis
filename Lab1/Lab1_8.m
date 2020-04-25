%basic operations on complex numbers
num = input('Enter a complex number:');
disp(num);
real_part = real(num);
imag_part = imag(num);
magnitude = abs(num);
angle_r = angle(num);
angle_d = angle_r * 180/pi;
disp('(x, y) => r /_theta')
fprintf('(%.2f, %.2f) => %.2f /_%.2f\n', real_part, imag_part, magnitude, angle_d);
