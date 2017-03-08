clear all;
close all; %Chiude tutte le finestre

t = -10:.01:10;

tri = mytri(t);
rect = myrect(t);
step = mystep(t);
sinc = mysinc(t);

plot (t, rect)
figure %Apre nuova figura [figure(x) apre la figura x]
plot (t,tri)
figure
plot (t,step)
figure
plot (t,sinc)
% hold on: permette sovrascrittura figure senza cancellare
% grid on: accende la griglia