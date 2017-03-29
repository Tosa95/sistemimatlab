clear all
close all

dt = 0.01;
t = -10:dt:10;
df=0.01;
f=-15:df:15;
tau = t;

T=2;
h=1/T*myrect((t-T/2)./T);
convo=ones(1, lenght(tau));
y=ones(1, lenght(f));


for l = 1 : length(f)
    for k = 1 : length(tau)

       trasl = tau(k);

       convo(k) = integrale( exp(1i*2*pi*f(l).*(t - tras1)).*1/T*myrect((t-T/2)./T) , dt); %se non uso mysinc fa tutti nan (divby0)



    end
    
    y(l)=convo./exp(1i*2*pi*f(l).*t);
    
end

mod=abs(y);
phase=angle(y);