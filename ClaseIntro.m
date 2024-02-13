t = linspace(-2*pi,2*pi);
f1 = 1/8;
f2 = 1/4;
f3 = 2;
f4 = 15/8;
x1 = 4*sin(2*pi*f1*t);
x2 = 4*sin(2*pi*f2*t);
x3 = 4*sin(2*pi*f3*t);
x4 = 4*sin(2*pi*f4*t);

subplot(2,2,1)
plot(x1)
title('4Sin((Pi/4)*t)')
xlabel('Tiempo')
ylabel('Amplitud')
grid on

subplot(2,2,2)
plot(x2)
title('4Sin((Pi/2)*t)')
xlabel('Tiempo')
ylabel('Amplitud')
grid on

subplot(2,2,3)
plot(x3)
title('4Sin(4*Pi*t)')
xlabel('Tiempo')
ylabel('Amplitud')
grid on

subplot(2,2,4)
plot(x4)
title('4Sin(15*Pi/4*t)')
xlabel('Tiempo')
ylabel('Amplitud')
grid on
