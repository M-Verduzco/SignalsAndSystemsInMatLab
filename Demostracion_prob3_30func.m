Tspan = 0:0.2/500:5;
y0 = 0;
options = odeset('RelTol', 1e-9, 'AbsTol', 1e-9);
[t, y] = ode45('prob3_30func', Tspan, y0, options);
H = plot(t, y, t, (1+.5*cos(pi*t/3)).*cos(30*pi*t), '--');
xlabel('Time (sec) ')