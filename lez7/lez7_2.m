clear all
close all

dt = 0.01;
t = -10:dt:10;
T = 2;

x = abs(cos(2*pi/4*(t-1/2)));

figure(1)
hold on;
plot (t, x);

for nArm = 10:10:30
    
    Xpos = zeros(1, nArm/2);
    Xneg = zeros(1, nArm/2);
    X0 = 2/pi;
    x2 = zeros(1, length(t));
    
    xeven = zeros(1, length(t));
    xodd = zeros(1, length(t));
    
    x2(1:length(t)) = X0;
    xeven(1:length(t)) = X0;
    
    for k = 1:1:nArm/2
       
        Xpos(k) = ((2 * (-1)^(k+1))/(pi*(4*k*k-1)))*exp(-1i*pi*k/2);
        
        kn = -k;
        
        Xneg(k) = ((2 * (-1)^(kn+1))/(pi*(4*kn*kn-1)))*exp(-1i*pi*kn/2);
        
        x2 = x2 + Xpos(k) * exp(1i*2*pi*k/T.*t) + Xneg(k) * exp(1i*2*pi*kn/T.*t);
        
        if (mod(k,2) == 0)
            xeven = xeven + Xpos(k) * exp(1i*2*pi*k/T.*t) + Xneg(k) * exp(1i*2*pi*kn/T.*t);
        else
            xodd = xodd + Xpos(k) * exp(1i*2*pi*k/T.*t) + Xneg(k) * exp(1i*2*pi*kn/T.*t);
        end
        
    end

    figure(1);
    plot(t, x2);
    
    figure
    plot (t, x - x2);
    
    figure
    hold on
    plot (t, xeven);
    plot (t, xodd);
    plot (t, xeven + xodd);
    
end