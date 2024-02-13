%ESTO SIEMPRE SIN COMENTAR:
t = 0:20;
v = ((0.5).^(t) - (0.25).^(t));

%EJERCICIO A
% h = conv(t, v);
% stem(0:(length(h)-1),h)

%EJERCICIO B
% x1 = sin(t*pi/4)
% h1 = conv(x1, v)
% stem(0:(length(h1)-1),h1)


%EJERCICIO C
% x2 = 1 + sin(t*pi/4)
% h2 = conv(x2, v)
% stem(0:(length(h2)-1),h2)






