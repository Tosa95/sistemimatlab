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

% function yk = myshift(y,k) % shift k positions to the right 
% 
% k = floor(k);
% yk = zeros(size(y));
% 
% % check for 1D, convert to row
% if size(y,1)>1
%     y = y';
% end
% if size(y,1)>1
%     fprintf('myshift: not a vector!\n')
%     return; 
% end
% 
% if k>=0
%     yk = [zeros(1,k) y(1:end-k)];
% else
%     yk = [y(-k+1:end) zeros(1,-k)];
% end
