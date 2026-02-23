padre(abraham, herbert).
padre(abraham, homero).
padre(homero, bart).
padre(homero, lisa).
padre(homero, maggie).
padre(clancy, patty).
padre(clancy, selma).
padre(clancy, marge).
                             
madre(mona, homero).
madre(marge, bart).
madre(marge, lisa).
madre(marge, maggie).
madre(jacqueline, patty).
madre(jacqueline, selma).
madre(jacqueline, marge). 
madre(selma, ling).



progenitor(X, Y) :- padre(X, Y).
progenitor(X, Y) :- madre(X, Y).

abuelo(X, Y) :- progenitor(X, Z), progenitor(Z, Y).

hermano(X, Y) :- progenitor(Z, X), progenitor(Z, Y), X \= Y.

tio(X, Y) :- hermano(X, Z), progenitor(Z, Y).

primo(X, Y) :- progenitor(Z, X), progenitor(W, Y), hermano(Z, W).