clear all;
close all;
dt=0.00001;
tmax = 100
tmin = -100
t=tmin:dt:tmax;

T=tmax-tmin

in1=myrect(t);
integrale(in1, dt)

in2=sin(2*pi*t/3);
integrale(in2,dt)

in3=mytri(t);
integrale(in3,dt)

integrale(in1.*in1, dt) %calcolo l'energia dei segnali
(1/T)*integrale(in2.*in2, dt)%calcolo la potenza (sin è segnale di potenza)
integrale(in3.*in3, dt)  
