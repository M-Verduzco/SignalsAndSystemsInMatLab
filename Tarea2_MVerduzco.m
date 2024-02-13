% Tarea 2;

% % 1.14.- b);
% n = 1:69;
% x = 5*sin(pi*n/10+pi/4);
% w = [1/63 2 /63 4/63 8/63 16/63 32/63];
% for n = 6:69
%     y(n) = w*(x(n-5:n)');
% end
% n = 6:69;
% plot(n, y(n), n, y(n), 'o', 'LineWidth', 1.5)
% grid on
% xlabel('n')
% ylabel('y(n)')
% title('(b)')

% 1.14.- c);

% 1.12 como auxiliar;
n1 = 1:69;
 x1 = 5*sin(pi*n1/10+pi/4);
 for n1=6:69
     y1(n1) = (1/6)*sum(x1(n1-5:n1));
 end
 n1 = 6:69;
plot(n1, y1(n1), n1, y1(n1), 'x', 'LineWidth', 1.5)
grid on
hold on


% 1.14 comparativo
n = 1:69;
x = 5*sin(pi*n/10+pi/4);
w = [1/63 2 /63 4/63 8/63 16/63 32/63];
for n = 6:69
    y(n) = w*(x(n-5:n)');
end
n = 6:69;
plot(n, y(n), n, y(n), 'o', 'LineWidth', 1.5)
grid on
xlabel('n')
ylabel('y(n)')
title('(c)')

hold off
