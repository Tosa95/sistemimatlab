clear all
close all

dt = 0.01;
t = -10:dt:10;
df=0.01;
f=-15:df:15;


x1=myrect(t);
X1=T_Fourier(x1, t, f, dt);

x2=mytri(t);
X2=T_Fourier(x2, t ,f ,dt);

x3=exp(-pi.*t.^2);
X3=T_Fourier(x3, t, f, dt);

x4=cos(4*pi.*t);
X4=T_Fourier(x4, t, f, dt);


plot(t, x1);
figure;
hold on;
plot(f, real(X1));
plot(f, imag(X1));

figure;
plot(t, Inv_T_Fourier( X1, t, f, df));

figure
plot(t, x2);
figure;
hold on;
plot(f, real(X2));
plot(f, imag(X2));

figure;
plot(t, Inv_T_Fourier( X2, t, f, df));


figure
plot(t, x3);
figure;
hold on;
plot(f, real(X3));
plot(f, imag(X3));

figure;
plot(t, Inv_T_Fourier( X3, t, f, df));


figure
plot(t, x4);
figure;
hold on;
plot(f, real(X4));
plot(f, imag(X4));

figure;
plot(t, Inv_T_Fourier( X4, t, f, df));

