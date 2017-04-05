function out = myshift( x, t, dt )

    steps = floor(t/dt);
    
    if (steps > 0)
       
        out = zeros(1, length(x));
        
        out(1:(length(x)-steps+1)) = x(steps:length(x));
        
    elseif (steps == 0)
            
        out = x;
    
    else
        
        steps = abs(steps);
        
        out = zeros(1, length(x));
        
        out(steps:length(x)) = x(1:(length(x)-steps+1));
        
    end

end

