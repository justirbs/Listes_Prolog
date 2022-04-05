:-use_module(library(clpfd)).

reverse([],[]).

reverse([H|Q],L) :-
    reverse(Q,RQ),
    add_last(RQ,H,L).

add_last([],X,[X]).

add_last([H|Q],X,[H|NQ]) :-
    add_last(Q,X,NQ).

reverse2(L,R) :-
    findall(X,(length(L,N),
            between(1,N,I),
            K#=N-I,
            nth0(K,L,X)),R).

palindrome(L) :- reverse(L,L).
    