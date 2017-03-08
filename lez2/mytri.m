function x = mytri (t)

    x = 1 - abs(t);
    x=x.*myrect(t/2); %Tronco il triangolo a [-1, 1]

end

