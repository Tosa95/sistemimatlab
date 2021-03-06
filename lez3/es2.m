clear all;
close all;

dt=0.0001;
tmax = 10;
tmin = -10;
t=tmin:dt:tmax;

B1 = ones(20,length(t));

figure
hold on

for k = 1 : 20 %matrice di 20 righe, ogni riga � un vettore della base (segnale rect k-esimo su t)
    
   k1 = myrect(t-k + 21/2);
   plot(k1)
   B1(k,:) = k1;
   
   
   
end

G1 = ones(20,20);

for i = 1 : 20 % matrice con prodotti scalari incrociati di ogni vettore della base
   for j = 1 : 20
      
       G1(i,j) = myScalarProduct(B1(i,:), B1(j,:), dt);
       
   end
end

G1

x = 10*sin(t).*(1+sqrt(abs(t))); 

comp = ones (20, 1);

for k = 1 : 20 %calcolo dei componenti (prodotto scalare del segnale per i vettori della base
    
   comp(k) = myScalarProduct(x, B1(k, :), dt);   
   
end

apprX = zeros(1, length(t));

for k = 1 : 20 % segnale approssimato ( sommatoria dei componenti per i vettori della base)
    
   apprX = apprX + comp(k, 1)*B1(k, :);
   
   
   
end

figure
hold on
plot(apprX)
plot(x)