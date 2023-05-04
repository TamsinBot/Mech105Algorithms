function [L, U, P] = luFactor(A)
% luFactor(A) completes LU decomposition with pivotiing
% inputs: coefficient matrix
% outputs: lower triangular matrix, upper triangular matrix, the permutation matrix

[n, m] = size(A);
if n ~= m
    error('Input matrix must be square');
end

L = eye(n); 
U = A;
P = eye(n);


for j = 1:n-1
   
    [~, pivot_row] = max(abs(U(j:n, j)));
    pivot_row = pivot_row + j - 1; 
    

    U([j, pivot_row], j:n) = U([pivot_row, j], j:n);
    P([j, pivot_row], :) = P([pivot_row, j], :);
    
    if j > 1
        L([j, pivot_row], 1:j-1) = L([pivot_row, j], 1:j-1);
    end
    
    L(j+1:n, j) = U(j+1:n, j) / U(j, j);
    
    U(j+1:n, j:n) = U(j+1:n, j:n) - L(j+1:n, j) * U(j, j:n);
end


end