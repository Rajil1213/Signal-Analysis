function [ y ] = scale( k )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
Fs = 100;
dt = 1/Fs;
t = -10:dt:10;
n = numel(t);
y = zeros(n);
for i = 1:n
    if (t(i) * k) >= -1 && (t(i) * k) < 0
        y(i) = 1 + t(i) * k; 
    else if (t(i) * k) >= 0 && (t(i) * k) < 2
            y(i) = 1 ;
        end
    end
end

