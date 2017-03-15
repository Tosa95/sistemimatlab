function ris = myScalarProduct( x, y, dt )

ris = integrale(x.*conj(y),dt);

end

