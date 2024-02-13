% 
% %Ejercicio #1:
% n = 0:3;
% x = [0 2 4 -1];
% subplot(2, 2, 1)
% stem(n, x, 'filled')
% axis([-1 4 -2 5])
% xlabel('n')
% ylabel('x[n]')
% title('(1.-)')
% 
% %Ejercicio #2:
% n2 = 0:3;
% h = [1 1 1 1];
% subplot(2, 2, 2)
% stem(n2, h, 'filled')
% axis([-1 4 -2 4])
% xlabel('n')
% ylabel('h[n]')
% title('(2.-)')
% 
% %Ejercicio #3:
% n3 = 0:6;
% y = conv(x, h);
% subplot(2, 2, 3);
% stem(n3, y, 'filled')
% axis([-2 7 -2 7])
% xlabel('n')
% ylabel('y[n]')
% title('(3.-)')
% 
% %Parte #2;
% %Ejercicio 1;
% 
% n5 = 0:29;
% xn = n5;
% subplot(2, 2, 1)
% stem(n5, xn, 'filled')
% xlabel('n')
% ylabel('xn[n]')
% title('(4.-)')
% 
% n5 = 0:29;
% xn2 = exp(-n5);
% subplot(2, 2, 2)
% stem(n5, xn2, 'filled')
% xlabel('n')
% ylabel('xn2[n]')
% title('(5.-)')
% 
% n3 = 0:58;
% y2 = conv(xn, xn2);
% subplot(2, 1, 2);
% stem(n3, y2, 'filled')
% xlabel('n')
% ylabel('conv2[n]')
% title('(6.-)')





% n3 = 0:30;
% y2 = conv(h, x6);
% subplot(2, 2, 3);
% stem(n3, y2, 'filled')
% xlabel('n')
% ylabel('conv2h*x6[n]')
% title('(6.-)')
% 
% n3 = 0:30;
% y2 = conv(x6, h);
% subplot(2, 2, 4);
% stem(n3, y2, 'filled')
% xlabel('n')
% ylabel('conv2h*x6[n]')
% title('(6.-)')

% 
% 
% %%%% X[n] %%%%%%
% 
% t = 0:20;
% t1 = 0:20;
% x = cos(pi/10.*t);
% subplot(3, 3, 1);
% stem(t1, x, 'filled')
% xlabel('n')
% ylabel('x[n]')
% title('x[n]')
% 
% 
% %%%% h[n] %%%%
% t2 = 0:10;
% for n = 1:11
%     h(n) = rand;
% end
% % subplot(2, 2, 2);
% % stem(t2, h, 'filled')
% % xlabel('n')
% % ylabel('h[n]')
% % title('h[n]')
% 
% %%% h1[n] %%%
% 
% h1 = h;
% 
% subplot(3, 3, 2);
% stem(t2, h1, 'filled')
% xlabel('t')
% ylabel('h1[n]')
% title('h1[n]')
% axis([-1 11 -1 1])
% 
% 
% %%%% h2[n] %%%%
% for n = 1:11
%     h2(n) = -rand;
% end
% subplot(3, 3, 3);
% stem(t2, h2, 'filled')
% xlabel('n')
% ylabel('h2[n]')
% title('h2[n]')
% axis([-1 11 -1 1])
% 
% % 
% % %%% h1[n] + h2[n]
% % subplot(3, 3, 4);
% % stem(t2, (h1 + h2), 'filled')
% % xlabel('n')
% % ylabel('h1[n] + h2[n]')
% % title('h1[n] + h2[n]')
% 
% 
% %%% x[n]*h1[n]
% t3 = 0:30;
% subplot(3, 3, [4 4.5]);
% stem((t3), conv(x,h1), 'filled')
% xlabel('n')
% ylabel('x[n]*h1[n]')
% title('x[n]*h1[n]')
% axis([-1 21 -5 5])
% 
% 
% %%% h1[n]*h2[n]
% t3 = 0:30;
% subplot(3, 3, [5.5 6]);
% stem((t), conv(h1,h2), 'filled')
% xlabel('n')
% ylabel('h1[n]*h2[n]')
% title('h1[n]*h2[n]')
% axis([-1 21 -5 5])
% 
% 
% %%% (x[n]*h1[n])*h2[n]
% t4 = 0:40;
% subplot(3, 3, [7 7.5]);
% stem((t4), conv(conv(x,h1), h2), 'filled')
% xlabel('n')
% ylabel('h1[n]*h2[n]')
% title('h1[n]*h2[n]')
% 
% %%% x[n]*(h1[n]*h2[n])
% t3 = 0:30;
% subplot(3, 3, [8.5 9]);
% stem((t4), conv(x, conv(h1,h2)), 'filled')
% xlabel('n')
% ylabel('x[n]*(h1[n]*h2[n])')
% title('x[n]*(h1[n]*h2[n])')

% 
% %%% x[n]*(h1 + h2)
% t3 = 0:30;
% subplot(3, 3, 7);
% stem((t3), conv(x,(h1 + h2)), 'filled')
% xlabel('n')
% ylabel('x[n]*(h1[n] + h2[n])')
% title('x[n]*(h1[n] + h2[n])')
% 
% 
% %%% x[n]*(h1 + h2)
% t3 = 0:30;
% 
% y1 = conv(x, h1);
% y2 = conv(x, h2);
% subplot(3, 3, 8);
% stem((t3), (y1 + y2), 'filled')
% xlabel('n')
% ylabel('((x[n]*h1[n]) + (x[n]*h2[n]))')
% title('((x[n]*h1[n]) + (x[n]*h2[n]))')


% 
% %Ejercicio 3
% n=0:20;
% x=cos((pi/10).*n);
% subplot(3,3,1);stem(n,x);axis([-1 21 -3 3]);title('x[n]');
% nh=0:10;
% for k=1:11
%     h1(k)=randn;
% end
% subplot(3,3,2);stem(nh,h1);axis([-1 11 -3 3]);title('h1[n]');
% for k=1:11
%     h2(k)=-randn;
% end
% subplot(3,3,3);stem(nh,h2);axis([-1 11 -1.5 1.5]);title('h2[n]');
% sum1=h1+h2;
% subplot(3,3,4);stem(nh,sum1,'filled');axis([-1 11 -3 3]);title('h1[n]+h2[n]');
% nconv=0:30;
% conv1=conv(x,h1);
% subplot(3,3,5);stem(nconv,conv1,'filled');axis([-1 31 -7 7]);title('x[n]*h1[n]');
% conv2=conv(x,h2);
% subplot(3,3,6);stem(nconv,conv2,'filled');axis([-1 31 -7 7]);title('x[n]*h2[n]');
% y1=conv(x,sum1);
% subplot(3,3,[7 7.5]);stem(nconv,y1,'filled');axis([-1 31 -7 7]);title('y[n]=x[n]*(h1[n]+h2[n])');
% y2=conv1+conv2;
% subplot(3,3,[8.5 9]);stem(nconv,y2,'filled');axis([-1 31 -7 7]);title('y[n]=(x[n]*h1[n])+(x[n]*h2[n])');
% 



for k = 1:1000000
    x(k) = randn;
end
histogram(x)
















