function out = myQuant( x, bits )

    dynamic = max(x) - min(x);
    
    dynamic = dynamic * 1.000001;
    
    delta = dynamic / (2^bits);
    
    %out = (ceil(x./delta)-1).*delta + delta/2;
    
    out = (floor(x./delta)).*delta + delta/2;

end

