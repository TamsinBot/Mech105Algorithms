
This function completes LU factorization with pivoting for a given system of equations
__________

Inputs: a coefficient matrix (must be square)
__________

Outputs: a lower triangular matrix, an upper triangular matrix, and a permutation matrix
__________

Example: completing LU factorization on the following system of equations

3x_1 + 4x_2 + 5x_3 = 9

5x_1 + 7x_2 + 8x_3 = 10

x_1 + 4x_3 = 1

luFactor(3 5 1 ; 4 7 0 ; 5 8 4)
