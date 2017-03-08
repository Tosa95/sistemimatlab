% Definiamo l'asse dei tempi
clear

t = -10:0.0001:10;

% Segnale sinusuoidale
% alle funzioni matlab posso passare dei vettori!!!
% ritorna il seno applicato ad ogni elemento di t
% pi = pi greco
x = myrect(t);


% plot(<asse dei tempi>, <segnale>)
% per info usa doc plot
plot(t,x)
