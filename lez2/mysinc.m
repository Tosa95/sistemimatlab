function x = mysinc(t)

    x = sin(pi*t)./(pi*t);
    
    %isnan : 1 se la componente è nan, 0 altrimenti. Ritorna vettore logico
    %poi lo uso per indicizzare
    
    %sum(isnan(x))% qua fa 1: c'è un nan
    
    %posso usare vettori logici per indicizzare
    
    %x(isnan(x))=1;% fa la stessa cosa, ma sostituisce con 1 tutte le
    %occorrenze di nan
    x(t==0)=1;%  cerca il t=0 e sostituisce in x il valore 1
    
    %sum(isnan(x))% qua fa 0: non ci sono più nan

end

