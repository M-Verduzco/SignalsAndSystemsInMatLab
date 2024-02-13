% 
% Práctica 10, Ej.3 - M.Verduzco
%


function plotBCE = plotBCE(A1, A2, Wc, Wp)
    Wc = Wc/(2*pi);
    Wp = Wp/(2*pi);
    Wesp = logspace(-0.2, 0.2);
    
    [BN, BWn] = buttord(Wp, Wc, A1, A2);
    [CN, CWn] = cheb1ord(Wp, Wc, A1, A2);
    [EN, EWn] = ellipord(Wp, Wc, A1, A2);
    
    [z11, p11, k11] = buttap(BN);
    [a11, b11] = zp2tf(z11, p11, k11);
    freqs(a11, b11, Wesp);
    hold on
    
    [z21, p21, k21] = cheb1ap(CN, Wp);
    [a21, b21] = zp2tf(z21, p21, k21);
    freqs(a21, b21, Wesp);
    
    [z31, p31, k31] = ellipap(EN, Wc, Wp);
    [a31, b31] = zp2tf(z31, p31, k31);
    freqs(a31, b31, Wesp);
    
    title('Filtros Analógicos Normalizados')
    xlabel('Frecuencua Lineal Normalizada [rad/seg]')
    ylabel('Amplitud Normalizada [volts]')
    legend({'Butterworth','Chebyshev', 'Elíptico'},'Location','northeast')
    grid on
    hold off
end



