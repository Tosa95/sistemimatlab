function x = myrect(t)

% abs(t) < 1/2 -> 1 per ogni t > -1/2 e < 1/2
% (abs(t) == 1/2)*1/2 -> 1/2 in -1/2 e 1/2
x = (abs(t)<1/2)+(abs(t)==1/2)*1/2;

