reverse([],[]).

reverse([H|Q],L) :-
    reverse(Q,RQ),
    add_last(RQ,H,L).

add_last([],X,[X]).

add_last([H|Q],X,[H|NQ]) :-
    add_last(Q,X,NQ).