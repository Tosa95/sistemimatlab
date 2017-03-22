clear all
close all

dt = 0.01;
t = -10:dt:10;
t2 = 1:dt:3; % da 1 a 3 poichè essendo il segnale periodico con T= 2 e partendo da 1
tau = t;
tau2 = 0:dt:2; %definito così per grafico più chiaro

cxy1 = zeros(1, length(t));
cxy1b = zeros(1, length(t));
cxy2 = zeros(1, length(t));
cxy3 = zeros(1, length(t2));

%Ciclo sulla traslazione
for k = 1 : length(tau)
    
   trasl = tau(k);
    
   cxy1(k) = integrale( conj(3*(mysinc(4*t)))  .*  mytri(t + 1 + trasl) , dt); %se non uso mysinc fa tutti nan (divby0)
   cxy1b(k) = integrale( conj(3*(mysinc(4*t)))  .*  (1i*mytri(t + 1 + trasl)) , dt);
   cxy2(k) = integrale( conj(myrect(t - 1/2) - myrect(t - 3/2))  .* (myrect(t - 1/2 + trasl) - myrect(t - 3/2 + trasl)), dt);
   
   
end

for k = 1 : length(tau2)
    
    trasl = tau2(k);
    
    
    %autocorrelazione circolare: il primo segnale e l'originale translato
    %di 1 per richiesta esercizio (guerrini) il secondo è composto da 3
    %periodi (-1,0, 1) del primo. Serve perchè altrimenti con la
    %translazione si perderebbe il valore del segnale
    cxy3(k) = integrale( 1/2 * ( conj(myrect(t2 - 3/2) - myrect(t2 - 5/2)) .* (myrect(t2 + 1/2 + trasl) - myrect(t2 - 1/2 + trasl) + myrect(t2 - 3/2 + trasl) - myrect(t2 - 5/2 + trasl) + myrect(t2 - 7/2 + trasl) - myrect(t2 - 9/2 + trasl)))  , dt);
end

hold on

%Plotto parte reale e immaginaria separate perchè cxy può essere complessa
plot(t, real(cxy1));
plot(t, imag(cxy1), 'r');

figure                                                                    
hold on

plot(t, real(cxy1b));
plot(t, imag(cxy1b), 'r');

figure
hold on

plot(t, real(cxy2));
plot(t, imag(cxy2), 'r');

figure
hold on

plot(tau2, cxy3);

rect = myrect(t);

figure

plot (t, myshift(rect, -1/2, dt));