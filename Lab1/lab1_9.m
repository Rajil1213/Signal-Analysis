%basic matrix operations:
matA = [1, 5, 7; 4, 1, 3; 1, 4, 5];
matB = 3:5;
matB = matB';
disp('MatA = ')
disp(matA)
disp('MatB = ')
disp(matB)
disp('Transpose of A:')
disp(matA')
disp('Transpose of B:')
disp(transpose(matB))
disp('Inverse of A:')
disp(inv(matA))
disp('Scalar multiplication of MatA with itself:')
disp(matA.*matA)
disp('Matrix Multiplication of MatA and MatB:')
disp(matA * matB)
