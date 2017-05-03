clear all
close all

dt = 0.01;
t = -10:dt:10;
T = 4;

x = zeros (1, length(t));

for k=-2:2
    x = x + (t+k*T).*myrect((t+k*T)./4);
end

figure(1)
hold on;
plot (t, x);

for nArm = 10:10:30;

    xeven = zeros(1, length(t));
    xodd = zeros(1, length(t));

    k10 = 1:1:nArm;

    b10 = ((-2)./(pi.*k10)).*(-1).^k10;

    x10 = zeros (1, length(t));

    for k=k10

        x10 = x10 + 2*b10(k)*sin(2*pi*(k/T).*t);

        
        if (mod(k,2) == 0)
            xeven = xeven + 2*b10(k)*sin(2*pi*(k/T).*t);
        else
            xodd = xodd + 2*b10(k)*sin(2*pi*(k/T).*t);
        end
    end

    figure(1)
    plot(t, x10);
    
    figure(nArm/10 + 1);
    plot(t, x-x10);
    
    figure
    hold on
    plot (t, xeven);
    plot (t, xodd);
    plot (t, xeven + xodd);
    
end


%s = tf ([1 0], 1);

%G = 1/s+1;

%figure;

%bode(G);