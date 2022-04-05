my_flatten([],[]).

my_flatten([H|Q], L) :-
    is_list(H),
    my_flatten(H,HF),
    my_flatten(Q,QF),
    append(HF,QF,L).

my_flatten([H|Q], L) :-
    not(is_list(H)),
    my_flatten(Q,QF),
    L = [H|QF].