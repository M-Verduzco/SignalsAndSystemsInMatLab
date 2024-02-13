% % a)
% syms H(s) X(S) Y(S)
% X = s-3;
% Y = (s+2)^2;
% H = X/Y;
% fplot(H)
% hold on
% ceros = roots(fliplr(coeffs(X)))
% polos = roots(fliplr(coeffs(Y)))
% 
% plot(3, 0, 'or')
% plot(-2, 0, 'or')
% hold off
% 
% Hspg = tf([1 -3],[1 4 4])
% [z, p, ~] = tf2zp([1 -3],[1 4 4])
% pzmap(z, p)
% 
% %impulse(Hspg)
% %step(Hspg)



 
% %b)
% syms H(s) X(S) Y(S)
% X = 1;
% Y = ((s+2)^2);
% H = X/Y;
% fplot(H)
% hold on
% %ceros = roots(fliplr(coeffs(X)))
% polos = roots(fliplr(coeffs(Y)))
% 
% plot(-2, 0, 'or')
% hold off


% %c)
% syms H(s) X(S) Y(S)
% X = 1;
% Y = (s^2+20*s+100);
% H = X/Y;
% fplot(H)
% hold on
% %ceros = roots(fliplr(coeffs(X)))
% polos = roots(fliplr(coeffs(Y)))
% 
% plot(-10, 0, 'or')
% hold off
% 
% Hspg = tf([1],[1 20 100])
% [z, p, ~] = tf2zp([1],[1 20 100])
% pzmap(z, p)
% 
% %impulse(Hspg)
% %step(Hspg)

%  



 

% %d)
% syms H(s) X(S) Y(S)
% X = 4;
% Y = ((s^2+1));
% H = X/Y;
% fplot(H)
% hold on
% %ceros = roots(fliplr(coeffs(X)))
% polos = roots(fliplr(coeffs(Y)))
% 
% plot(-1, 0, 'or')
% hold off


 
 
% %e)
% syms H(s) X(S) Y(S)
% X = (2*s+2);
% Y = ((s^3 + s^2 - 7*s - 15));
% H = X/Y;
% fplot(H)
% hold on
% ceros = roots(fliplr(coeffs(X)))
% polos = roots(fliplr(coeffs(Y)))
% 
% plot(-1, 0, 'or')
% plot(3, 0, 'or')
% plot(-2, 0, 'or')
% hold off
% Hspg = tf([2 2],[1 1 -7 -15])
% [z, p, ~] = tf2zp([2 2],[1 1 -7 -15])
% pzmap(z, p)
% 
% %impulse(Hspg)
% step(Hspg)
% % 


% %f)
% syms H(s) X(S) Y(S)
% X = (3*s+12);
% Y = ((s^2 - 2*s + 5));
% H = X/Y;
% fplot(H)
% hold on
% ceros = roots(fliplr(coeffs(X)))
% polos = roots(fliplr(coeffs(Y)))
% plot(-4, 0, 'or')
% plot(1, 0, 'or')
% hold off





