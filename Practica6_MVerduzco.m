%PRACTICA #6

fprintf('HOLA MUNDO!   :)')


%Ej2:

% % a)
% N_a=10;
% N1_a=2;
% t_a=-10:10;
% for n=1:21;
%     if abs(n-N_a-1)<=(N1_a) | abs(n-N_a-1)>=(4*N1_a)
%         x_a(n)=1;
%     else
%         x_a(n)=0;
%     end
%     if (n-1==0) | (abs(n-1)==N_a) | (abs(n-1)==2*N_a)
%         a_a(n)=(2*N1_a+1)/N_a;
%     else
%         a_a(n)=(1/N_a)*(sin(2*pi*(n-1)*((N1_a+0.5)/N_a)))/(sin((pi*(n-1))/N_a));
%     end
% end
% subplot(2,1,1);stem(t_a,x_a);axis([-10 10 -0.5 1.5]); title('a) x[n] con N=10 y N1=2');
% subplot(2,1,2);stem(t_a,a_a);axis([-10 10 -0.2 0.6]); title('a) ak con N=10 y N1=2');





% %b)
% N_b=20;
% N1_b=2;
% t_b=-N_b:N_b;
% for n=1:2*(N_b)+1;
%     if abs(n-N_b-1)<=N1_b | abs(n-N_b-1)>=9*N1_b
%         x_b(n)=1;
%     else
%         x_b(n)=0;
%     end
%     if (n-1==0) | (abs(n-1)==N_b) | (abs(n-1)==2*N_b)
%         a_b(n)=(2*N1_b+1)/N_b;
%     else
%         a_b(n)=(1/N_b)*(sin(2*pi*(n-1)*((N1_b+0.5)/N_b)))/(sin((pi*(n-1))/N_b));
%     end
% end
% subplot(2,1,1);stem(t_b,x_b);axis([-20 20 -0.5 1.5]); title('b) x[n] con N=20 y N1=2');
% subplot(2,1,2);stem(t_b,a_b);axis([-20 20 -0.2 0.4]); title('b) ak con N=20 y N1=2');
% 



% %c)
% N_c=40;
% N1_c=2;
% t_c=-N_c:N_c;
% for n=1:2*(N_c)+1;
%     if abs(n-N_c-1)<=N1_c | abs(n-N_c-1)>=19*N1_c
%         x_c(n)=1;
%     else
%         x_c(n)=0;
%     end
%     if (n-1==0) | (abs(n-1)==N_c) | (abs(n-1)==2*N_c)
%         a_c(n)=(2*N1_c+1)/N_c;
%     else
%         a_c(n)=(1/N_c)*(sin(2*pi*(n-1)*((N1_c+0.5)/N_c)))/(sin((pi*(n-1))/N_c));
%     end
% end
% subplot(2,1,1);stem(t_c,x_c);axis([-40 40 -0.5 1.5]); title('c) x[n] con N=40 y N1=2');
% subplot(2,1,2);stem(t_c,a_c);axis([-40 40 -0.1 0.2]); title('c) ak con N=40 y N1=2');
% 
% 

% 
% 
% 
% %d)
% N_d=30;
% N1_d=3;
% t_d=-N_d:N_d;
% for n=1:2*(N_d)+1;
%     if abs(n-N_d-1)<=N1_d | abs(n-N_d-1)>=9*N1_d
%         x_d(n)=1;
%     else
%         x_d(n)=0;
%     end
%     if (n-1==0) | (abs(n-1)==N_d) | (abs(n-1)==2*N_d)
%         a_d(n)=(2*N1_d+1)/N_d;
%     else
%         a_d(n)=(1/N_d)*(sin(2*pi*(n-1)*((N1_d+0.5)/N_d)))/(sin((pi*(n-1))/N_d));
%     end
% end
% subplot(2,1,1);stem(t_d,x_d);axis([-N_d N_d -0.5 1.5]); title('d) x[n] con N=30 y N1=3');
% subplot(2,1,2);stem(t_d,a_d);axis([-N_d N_d -0.1 0.3]); title('d) ak con N=30 y N1=3');

 
% 
% %e)
% N_e=30;
% N1_e=6;
% t_e=-N_e:N_e;
% for n=1:2*(N_e)+1;
%     if abs(n-N_e-1)<=N1_e | abs(n-N_e-1)>=4*N1_e
%         x_e(n)=1;
%     else
%         x_e(n)=0;
%     end
%     if (n-1==0) | (abs(n-1)==N_e) | (abs(n-1)==2*N_e)
%         a_e(n)=(2*N1_e+1)/N_e;
%     else
%         a_e(n)=(1/N_e)*(sin(2*pi*(n-1)*((N1_e+0.5)/N_e)))/(sin((pi*(n-1))/N_e));
%     end
% end
% subplot(2,1,1);stem(t_e,x_e);axis([-N_e N_e -0.5 1.5]); title('e) x[n] con N=30 y N1=6');
% subplot(2,1,2);stem(t_e,a_e);axis([-N_e N_e -0.2 0.5]); title('e) ak con N=30 y N1=6');
% 




% 
% 
% %f)
% N_f=30;
% N1_f=9;
% t_f=-N_f:N_f;
% for n=1:2*(N_f)+1;
%     if abs(n-N_f-1)<=N1_f | abs(n-N_f-1)>=(2+1/3)*N1_f
%         x_f(n)=1;
%     else
%         x_f(n)=0;
%     end
%     if (n-1==0) | (abs(n-1)==N_f) | (abs(n-1)==2*N_f)
%         a_f(n)=(2*N1_f+1)/N_f;
%     else
%         a_f(n)=(1/N_f)*(sin(2*pi*(n-1)*((N1_f+0.5)/N_f)))/(sin((pi*(n-1))/N_f));
%     end
% end
% subplot(2,1,1);stem(t_f,x_f);axis([-N_f N_f -0.5 1.5]); title('f) x[n] con N=30 y N1=9');
% subplot(2,1,2);stem(t_f,a_f);axis([-N_f N_f -0.2 0.7]); title('f) ak con N=30 y N1=9');







%Ej3:
%Segunda parte
%a)
M=1:1;
N=9;
N1=2;
n=-20:20;
ak=ones([1 41]);
for i=1:41
    if i~=21
        ak(i)=(1/N)*((sin(2*(i-21)*pi*(N1+.5)/N))/sin(pi*(i-21)/N));
    else
        ak(i)=(2*N1+1)/N;
    end
end

x=ak(21);
for i=1:1
    x=x+2*ak(21+i)*cos(i*2*pi*(n/N));
end

subplot(4, 1, 1);stem(n,x)
ylim([-.5 1.5])


%B)
M=1:2;
N=9;
N1=2;
n=-20:20;
ak=ones([1 41]);
for i=1:41
    if i~=21
        ak(i)=(1/N)*((sin(2*(i-21)*pi*(N1+.5)/N))/sin(pi*(i-21)/N));
    else
        ak(i)=(2*N1+1)/N;
    end
end

x=ak(21);
for i=1:2
    x=x+2*ak(21+i)*cos(i*2*pi*(n/N));
end

subplot(4, 1, 2); stem(n,x)
ylim([-.5 1.5])



%C)
M=1:3;
N=9;
N1=2;
n=-20:20;
ak=ones([1 41]);
for i=1:41
    if i~=21
        ak(i)=(1/N)*((sin(2*(i-21)*pi*(N1+.5)/N))/sin(pi*(i-21)/N));
    else
        ak(i)=(2*N1+1)/N;
    end
end

x=ak(21);
for i=1:3
    x=x+2*ak(21+i)*cos(i*2*pi*(n/N));
end

subplot(4, 1, 3);stem(n,x)
ylim([-.5 1.5])


%D)
M=1:4;
N=9;
N1=2;
n=-20:20;
ak=ones([1 41]);
for i=1:41
    if i~=21
        ak(i)=(1/N)*((sin(2*(i-21)*pi*(N1+.5)/N))/sin(pi*(i-21)/N));
    else
        ak(i)=(2*N1+1)/N;
    end
end

x=ak(21);
for i=1:4
    x=x+2*ak(21+i)*cos(i*2*pi*(n/N));
end

subplot(4, 1, 4);stem(n,x)
ylim([-.5 1.5])
    







    
     
        
    
 