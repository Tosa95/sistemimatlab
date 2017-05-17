close all
clear all

tmin = -10;
tmax = 10;
tduration = tmax - tmin;

dt = 0.01;
t = tmin:dt:tmax;

x = sin(t)*0.99;

hold on
plot(t, x);
plot(t, myQuant(x, 2));

x2 = (1/2)*t.^3 + 5*t.^2 - 2*(t+10).^2 + 20;

figure


for i = 1:1:4
    
    bits = 2^i;
    
    x2q = myQuant(x2, bits);
    
    subplot(2,2,i);
    hold on
    title(sprintf( '%d bits, potenza media: %f', bits, integrale(abs(x2-x2q).^2, dt)))
    
    plot(t, x2);
    plot(t, x2q);
    plot(t, x2-x2q);

    
end

