clear all;
close all;

dt=0.00001;
tmax = 100;
tmin = -100;
t=tmin:dt:tmax;

T = tmax-tmin;

B1 = ones(20,T/dt + 1);

for k = 1 : 20
    
   k1 = myrect(t-k + 21/2);
   B1(k,:) = k1;
   
   
   
end

figure

plot(B1)