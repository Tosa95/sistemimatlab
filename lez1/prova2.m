a=[3:5; 4:2:8; 3:-1:1; 2:4];
%3:-1:1 va da 3 a 1 con passo -1

b=5;

%sconsigliato usare i: è l'unità immaginaria
%oppure uso i e poi chiamo 1i l'unità immaginaria
%length(a) = 4 (primo indice della matrice -> numero di righe)
%size(a) = 4 3 (vettore che contiene numero di righe e numero di colonne)

%a tutto su una riga
a1 = [3:5 4:2:8 3:-1:1 2:4];

%legnth(vettore) ritorna sempre la lunghezza, indipendentemente da che sia
%riga o colonna

for i = 1:length(a1) 
    if a(i)>3
        %'' in una stringa siginfica singolo apice
        fprintf('a(%d) e'' %d\n', i, a(i))
    end
end

%a>3 ritorna un vettore di booleani [vettore logico] (0 o 1) che corrispondono
%all'applicazione di x>3 per ogni x <- a
a1>3

% || -> or logica tra scalari
% | -> or tra vettori logici
% a==4 -> 1 se l'elemento è uguale a 4
% & -> and tra vettori logici
