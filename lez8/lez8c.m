clear all
close all

tmin = -10;
tmax = 10;
tduration = tmax - tmin;

dt = 0.01;
t = tmin:dt:tmax;
df=0.01;
f=-15:df:15;


x1=myrect(t./sqrt(2));
X1=T_Fourier(x1, t, f, dt);

figure(1)
subplot(6,2,1);
plot(t,x1);
subplot(6,2,2);
plot(f, abs(X1));

for i = 1:1:5
    
    Tc = i * 10 * dt;
    
    x1c = zeros(1, length(x1));
    
    for k = 1:1:(tduration/Tc)
       
        index = int64(k*Tc/dt);
        
        x1c(index)=x1(index);
        
    end
    
    
    figure(1)
    subplot(6,2,(i)*2+1);
    plot(t,x1c);
    
    X1c=T_Fourier(x1c, t, f, dt);
    
    subplot(6,2,(i)*2+2);
    plot(f,abs(X1c));
    
    %     hi = mysinc(t/Tc);
%     Hi = T_Fourier(hi, t, f, dt);
%     
%     Xric=(X1c*100).*Hi;
%     
%     xric = Inv_T_Fourier(Xric, t, f, df);
    
    xric = zeros(1,length(x1));
    
    for k = 1:1:(tduration/(Tc)) %Ricoustruito tramite sommatoria di sinc, con 
       
        index = int64(k*Tc/dt);
        
        xric = xric + x1(index).*mysinc(1/Tc.*(t-(k-tduration/(2*Tc))*Tc));
        
    end
    
%     Ricostruito tramite trasformata -> veniva male  

%     hizoh = myrect((t-Tc/2)./Tc);
%     Hizoh = T_Fourier(hizoh, t, f, dt);
%     
%     Xriczoh=X1c.*Hizoh;
%     
%     xriczoh = Inv_T_Fourier(Xriczoh, t, f, df);
    

%   Ricostruito simulando il comportamento dello zoh nei tempi
    xriczoh = zeros(1,length(x1));
    
    for k = 1:1:(tduration/Tc)-1
       
        index = int64(k*Tc/dt);
        
        xriczoh(index:(index+Tc/dt))=x1(index);
        
    end
    
    figure(2)
    subplot(5,2,(i-1)*2+1);
    plot(t, real(xric));
    subplot(5,2,(i-1)*2+2);
    plot(t, xriczoh);
end