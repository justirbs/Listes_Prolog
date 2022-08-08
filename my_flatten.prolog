% cas d'arrêt
my_flatten([],[]).

% cas où H est une liste
my_flatten([H|Q], L) :-
    is_list(H),
    my_flatten(H,HF),
    my_flatten(Q,QF),
    append(HF,QF,L).

% cas où H est un élément
my_flatten([H|Q], L) :-
    not(is_list(H)),
    my_flatten(Q,QF),
    L = [H|QF].