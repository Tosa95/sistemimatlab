function out = myshift( x, t, dt )

    steps = floor(t/dt);
    
    if (steps > 0)
       
        out = zeros(1, length(x));
        
        out(0:(length(x)-steps)) = x(steps:length(x));
        
    else
        
        steps = abs(steps);
        
        out = zeros(1, length(x));
        
        out(steps:length(x)) = x(0:(length(x)-steps));
        
    end

end

