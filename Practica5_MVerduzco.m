%%practica 5%%

% % pregunta #1 %%
% t = 0:250;
% f11 = cos(t/3);
% subplot(3,1,1);plot(t, f11);axis([0 250 -2 2]); title('cos(t/3)');
% f12 = cos(t/4);
% subplot(3,1,2);plot(t, f12);axis([0 250 -2 2]); title('cos(t/4)');
% f = f11 + f12;
% subplot(3,1,3);plot(t, f);axis([0 250 -2 2]); title('cos(t/3) + cos(t/4)');
% 
% [pks1,locs1] = findpeaks(f11,t);
% period1 = mean(diff(locs1))
% [pks2,locs2] = findpeaks(f12,t);
% period2 = mean(diff(locs2))
% [pks3,locs3] = findpeaks(f,t);
% 
% pks3
% max1 = max(pks3)
% counter = 1;
% n = 1
% while abs(pks3(n)-max1) >= 0.1
%     counter = counter+1;
%     n = n+1;
% end
% counter
% period3 = mean(diff(locs3))*counter
% 
% 


% %pregunta #2
% t = -15:0.01:15;
% f21 = 2+0*t;subplot(4,1,1);plot(t, f21);axis([-12 12 -5 5]); title('2');
% f22 = cos(2*pi/3*t);subplot(4,1,2);plot(t, f22);axis([-12 12 -5 5]); title('cos(2*pi/3*t)');
% f23 = 4*sin(5*pi/3*t);subplot(4,1,3);plot(t, f23);axis([-12 12 -5 5]); title('4*sin(5*pi/3*t)');
% f2 = f21 + f22 + f23;subplot(4,1,4);plot(t, f2);axis([-12 12 -10 10]); title('f1 + f2 + f3');
% 
%  %[pks1,locs1] = findpeaks(f21,t);
%  %period1 = mean(diff(locs1))
%  [pks2,locs2] = findpeaks(f22, t);
%  period2 = mean(diff(locs2))
%  [pks3,locs3] = findpeaks(f23,t);
%  period3 = mean(diff(locs3))
%  [pks4,locs4] = findpeaks(f2,t);
%  
%  max1 = max(pks4)
% counter = 1;
% n = 1;
% while abs(pks4(n)-max1) >= 0.001
%     counter = counter+1;
%     n = n+1;
% end
% counter = counter*2
% period4 = mean(diff(locs4))*counter

%ejercicio 3 y 4
% T = 2;
% t = -1:0.01:1;
% omega0 = pi;
% x1 = sin(omega0*t);
% x2 = (1/3)*sin(3*omega0*t);
% x3 = (1/5)*sin(5*omega0*t);
% x4 = (1/7)*sin(7*omega0*t);
% x5 = (1/9)*sin(9*omega0*t);
% x6 = (1/11)*sin(11*omega0*t)
% x = (4/pi)*(x1) + (x2) + (x3) + (x4) + (x5) +x6;
% figure
% plot(t,x1,'b',t,x2,'m',t,x3,'r', t, x4,'g', t, x5,'c',t, x6,'y', t, x, 'k' );axis([-1 1 -2 2]); title('res');
% %,t, x6,'y' 


% %Ejericio 5
% t = -1:0.01:1;
% omega0 = pi;
% f = 0;
% for x = 0:50
%     f = f + (1/(x*2+1))*sin((x*2+1)*omega0*t);
% end
% f = (4/pi)*(f);
% plot(t, f);

% %Ejercicio 6
% t = -2:0.01:2;
% omega0 = pi;
% f = 0;
% for x = 0:50
%     f = f +  (-1)^(x)*(1/((x*2+1)^2))*sin((x*2+1)*omega0*t);
% end
% f = (8/pi^2)*(f);
% plot(t, f);
% axis([-2 2 -1.5 1.5]);

% %Ejercicio 7
% t = -2:0.01:2;
% omega0 = pi;
% f = 0;
% for x = 1:51
%     f = f +  (-1)^(x+1)*(1/((x)))*sin((x)*omega0*t);
% end
% f = (2/pi)*(f);
% plot(t, f);
% axis([-2 2 -1.5 1.5]);




% % Extra
% 
% for k = 1:1000
%     x(k) = randn;
%     y(k) = rand;
% end
% subplot(2,1,1);plot(x)
% subplot(2,1,2);plot(y)



% %Extra 2
% t = 0:1000;
% x = normpdf(t,2,5);
% y = raX ndi([-2 3], 1, 1001);
% subplot(2,1,1);plot(x)
% subplot(2,1,2);plot(y)






    



    








    