%No entendí el 2.17

%Ej 3.20


%a)
% syms t X omega
%X=simplify(int((t+1)*exp(-j*omega*t),t,-1,0)+int(exp(-j*omega*t),t,0,1));
X=1/omega^2*(1-exp(i*omega)+i*exp(-i*omega)*omega);
ezplot(abs(X),0,20)
axis([0 20 0 2])
ylabel('Magnitude of X')
pause
w=0:0.5:20;
angX=180*subs(X,w)/pi;
plot(w,angX)
ylabel('Angle of X in degrees')

%No funcionó bien

%Ej 3.30
function dy=prob3_30_func(t,y);
s=(1+0.5*cos(pi*t/3)).*cos(30*pi*t);
C=.000005;
RL=50000;
Rs=100;
if s>=y
    dy=-(1/RL/C+1/Rs/C)*y+s/Rs/C;
else
    dy=-y/RL/C;
end


Tspan=0:.2/500:5;
y0=0;
options=odeset('RelTol',1e-9,'AbsTol',1e-9);
[t,y]=ode45('prob3_30_func',Tspan,y0,options);
plot(t,y,t,(1+.5*cos(pi*t/3)).*cos(30*pi*t),'--');xlabel('Tiempo (s)');ylabel('Salida del envolvente');