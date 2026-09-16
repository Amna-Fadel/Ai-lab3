male(ahmad).
male(ali).
male(mohammed).
male(hassan).

female(nora).
female(sara).
female(arwa).

parent(ahmad ,ali).
parent(ahmad, mohammed).
parent(ahmad, sara).
parent(ahmad, hassan).

parent(nora, ali).
parent(nora, mohammed).
parent(nora, sara).
parent(nora, hassan).

parent(sara, arwa).

father(X,Y) :- male(X), parent(X,Y).
mother(X,Y) :- female(X), parent(X,Y).

sister(X,Y) :- female(X), parent(P,X), parent(P,Y), X \= Y.
brother(X,Y) :- male(X), parent(P,X), parent(P,Y), X \= Y.
