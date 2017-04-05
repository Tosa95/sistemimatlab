clear all
close all

dt = 0.01;
t = -30:dt:30;
df=0.01;
f=-35:df:35;
tau=f;

x1=mysinc(5.*t);
X1=T_Fourier(x1, t, f, dt);

x2=mysinc(5.*(t-1/2));
X2=T_Fourier(x2, t, f, dt);

x3=mysinc(5.*(t+1));
X3=T_Fourier(x3, t, f, dt);

subplot(3,3, 1);
plot(t,x1);

subplot(3,3, 2);
plot(f,abs(X1));

subplot(3,3, 3);
plot(f,angle(X1));

subplot(3,3, 4);
plot(t,x2);

subplot(3,3, 5);
plot(f,abs(X2));

subplot(3,3, 6);
plot(f,angle(X2));

subplot(3,3, 7);
plot(t,x3);

subplot(3,3, 8);
plot(f,abs(X3));

subplot(3,3, 9);
plot(f,angle(X3));

x4=(mysinc(t).^2).*cos(10*pi.*t);
X4=T_Fourier(x4, t, f, dt);

x4a=mysinc(t);
x4b=cos(10*pi.*t);
cx4 = zeros(1, length(t));


X4A = T_Fourier(mysinc(t).^2, t, f, dt);
X4B = T_Fourier(x4b, t, f, dt);

for k = 1 : length(tau)
    
   trasl = tau(k);
    
   cx4(k) = integrale( myshift( X4A , trasl, dt)  .*  X4B, dt);
   
end

x4Inv = Inv_T_Fourier(cx4, t, f, df);

figure

subplot(2,3,1);
plot(t, x4);

subplot(2,3,2);
plot(f, abs(X4));

subplot(2,3,3);
plot(f, angle(X4));

subplot(2,3,4);
plot(t, real(x4Inv));

subplot(2,3,5);
plot(f, abs(cx4));

subplot(2,3,6);
plot(f, angle(cx4));


%--------------- FENOMENO DI GIBBS -------------------

fprintf('B=2\n');
B=2;
H = myrect(f./(2*B));
h = 2*B*mysinc(2*B*t);

H1 = T_Fourier(h.*myrect(t./4), t, f, dt);
H2 = T_Fourier(h.*myrect(t./10), t, f, dt);
H3 = T_Fourier(h.*myrect(t./20), t, f, dt);


figure

subplot(1, 3, 1);
plot (f, abs(H1));

subplot(1, 3, 2);
plot (f, abs(H2));

subplot(1, 3, 3);
plot (f, abs(H3));

fprintf ('E1 = %f\n', integrale(abs(H1 - H).^2, df))
fprintf ('piccomax1 = %f\n', max(abs(H1 - H)))
fprintf ('E2 = %f\n', integrale(abs(H2 - H).^2, df))
fprintf ('piccomax2 = %f\n', max(abs(H2 - H)))
fprintf ('E3 = %f\n', integrale(abs(H3 - H).^2, df))
fprintf ('piccomax3 = %f\n', max(abs(H3 - H)))

fprintf('\n\nB=10\n');
B=10;
H = myrect(f./(2*B));
h = 2*B*mysinc(2*B*t);

H1 = T_Fourier(h.*myrect(t./4), t, f, dt);
H2 = T_Fourier(h.*myrect(t./10), t, f, dt);
H3 = T_Fourier(h.*myrect(t./20), t, f, dt);


figure

subplot(1, 3, 1);
plot (f, abs(H1));

subplot(1, 3, 2);
plot (f, abs(H2));

subplot(1, 3, 3);
plot (f, abs(H3));

fprintf ('E1 = %f\n', integrale(abs(H1 - H).^2, df))
fprintf ('piccomax1 = %f\n', max(abs(H1 - H)))
fprintf ('E2 = %f\n', integrale(abs(H2 - H).^2, df))
fprintf ('piccomax2 = %f\n', max(abs(H2 - H)))
fprintf ('E3 = %f\n', integrale(abs(H3 - H).^2, df))
fprintf ('piccomax3 = %f\n', max(abs(H3 - H)))