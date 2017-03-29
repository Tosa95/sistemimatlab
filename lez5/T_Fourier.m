function [out] = T_Fourier(x,t,f,dt)

    out=ones(1,length(f));
    for i= 1:length(f)
        out(i)=integrale(x.*exp(-1i*2*pi*f(i).*t),dt);

    end

end

