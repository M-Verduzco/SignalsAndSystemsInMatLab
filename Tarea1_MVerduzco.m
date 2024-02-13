% %  1.1.- ii)
% % a)
% t = [-3 -2 -2 -1 -1 1 1 2 2 3];
% x = [0 0 1 1 2 2 1 1 0 0];
% plot(t,x)
% axis([-3 3 0 3])

% % b)
% t = [-5 -4 -1 1 4 5];
% x = [0 0 1 1 0 0];
% plot(t,x)
% axis([-4 4 0 2])



% % c)
% t = [-7 -6 -6 -3 -3 0 3 3 6 6 7];
% x = [0 0 2 2 4 6 4 2 2 0 0];
% plot(t,x)
% axis([-7 7 0 7])

% % d)
% t = [-3 -2 -2 0 2 2 3];
% x = [0 0 4 2 4 0 0];
% plot(t,x)
% axis([-3 3 0 5])



% % e)
% t = [-1 0 0 1 1 2 2 3 3 4 4 5 5 6];
% x = [0 0 1 1 0 0 1 1 0 0 1 1 0 0];
% plot(t,x)
% axis([-1 6 0 2])



% %  1.4.- a)
% t = [-2 -1 -1 1 1 3 3 4];
% x = [0 0 1 1 -1 -1 0 0 ];
% plot(t, x, 'LineWidth', 1.5);
% axis([-2 4 -2 2])
% xlabel('Time (sec)')
% ylabel('x(t)')
% title('(a)')


% %   1.4.- b);
% t = [-1 0 1 1 2 2 4];
% x = [0 0 -1 1 1 0 0 ];
% plot(t, x, 'LineWidth', 1.5);
% axis([-1 3 -2 2])
% xlabel('Time (sec)')
% ylabel('x(t)')
% title('(b)')



% 
% %   1.4.- c);
% t1 = [0 1];
% x1 = [0 0];
% t2 = 1:.01:2;
% x2 = 2*(t2-1);
% t3 = [2 3];
% x3 = [2 2];
% t4 = 3:0.01:5;
% x4 = 2*t4-4;
% t = [t1 t2 t3 t4];
% x = [x1 x2 x3 x4];
% plot(t, x, 'LineWidth', 1.5)
% axis([0 5 -1 7])
% xlabel('Time (sec)')
% ylabel('x(t)')
% title('(c)')





% % 1.8.- a)
% n = -5:6;
% x = [0 0 0 0 0 1 -1 -1 -1 0 0 0];
% stem(n, x, 'filled')
% axis([-5 6 -2 2])
% xlabel('n')
% ylabel('x[n]')
% title('(a)')


% % 1.8.- b)
% n = -5:6;
% x = [0 0 0 0 1 0 1 2 3 0 0 0];
% stem(n, x, 'filled')
% axis([-5 6 -1 4])
% xlabel('n')
% ylabel('x[n]')
% title('(b)')

% % 1.8.- c)
% n = -5:6;
% x = [0 0 0 0 2 0 1 0 0 0 0 0];
% stem(n, x, 'filled')
% axis([-5 6 -1 3])
% xlabel('n')
% ylabel('x[n]')
% title('(c)')

% % 1.8.- d)
% 
% for n = 1:4
%     x(n) = 0;
% end
% x(5) = exp(-.8);
% for n = 6:12
%     x(n) = exp(.8*(n-6))+1;
% end
% n = -5:6;
% stem(n, x, 'filled')
% xlabel('n')
% ylabel('x[n]')
% title('(d)')


