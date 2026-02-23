
estadounidense(west).

enemigo(corea_sur, eeuu).

misil(rocket).
tiene(corea_sur, rocket).

hostil(X) :- enemigo(X, eeuu).

arma(X) :- misil(X).

vende(west, X, corea_sur) :- misil(X), tiene(corea_sur, X).

criminal(X) :- 
    estadounidense(X), 
    arma(Y), 
    hostil(Z), 
    vende(X, Y, Z).