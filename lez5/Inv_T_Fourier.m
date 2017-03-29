function [out] = Inv_T_Fourier(X,t,f,df)

    out=ones(1,length(t));
    for i= 1:length(t)
        out(i)=integrale(X.*exp(1i*2*pi*t(i).*f),df);

    end

end
