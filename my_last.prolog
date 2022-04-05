:-use_module(library(clpfd)).

% Trouver le dernier élément d'une liste

% cas d'arrêt
my_last(A,[A]).
% définition récursive
my_last(X,L) :-
    L=[_|Q],
    my_last(X,Q).
% version moins efficace
my_last_slow(X,L) :-
    length(L,N),
    nth1(N,L,X).


% Trouver l'avant dernier élément d'une liste

% cas d'arrêt
my_last_but_one(A,[A,_]).
% définition récursive
my_last_but_one(X,L) :-
    L=[_|Q],
    my_last_but_one(X,Q).
% version moins efficace
my_last_but_one_slow(X,L) :-
    length(L,N),
    N1 #= N-1,
    nth1(N1,L,X).