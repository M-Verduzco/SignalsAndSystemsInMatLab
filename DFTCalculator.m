%
% Discrete Fourier Transform
%
function Xk = DFTCalculator(x)
[N, M] = size(x);
if M~=1         %Makes sure that x es a column vector
    x = x';
    N = M;
end
Xk = zeros(N,1);
n = 0:N-1;
for k = 0:N-1
    Xk(k+1) = exp(-1i*2*pi*k*n/N)*x;
end
