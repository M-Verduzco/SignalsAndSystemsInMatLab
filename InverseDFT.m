%
% Inverse Discrete Fourier Transform
%
function x = InverseDFT(Xk)
[N, M] = size(Xk);
if M~=1         %Makes sure that x es a column vector
    Xk = Xk.';
    N = M;
end
x = zeros(N,1);
k = 0:N-1;
for n = 0:N-1
    x(n+1) = exp(1i*2*pi*k*n/N)*Xk;
end
x = x/N;
