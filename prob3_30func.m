%3.24, 3.25, 3.30

%3.30: Generate de MATLAB plot of the opuput of the envelope detector in
%the case when x(t) = 3cos(pi/3*t), wc = 30pi, k = 0.5, Rs = 100 [ohms], C
%= 5microfarads, and Rl = 50,000 [ohms]

function dy = prob3_30func(t, y)
s = (1+0.5*cos(pi*t/3)).*cos(30*pi*t);
C = 0.000005;
RL = 50000;
Rs = 100;
if(s>y)
    dy = -(1/RL/C+1/Rs/C)*y+s/Rs/C; %El diodo conduce
else
    dy = -y/RL/C; %l diodo no conduce
end


