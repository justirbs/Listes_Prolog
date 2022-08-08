% cas d'arrêt
pack([],[]).

% fonction principale
pack([X|Q],L) :-
    p(X,Q,PackX,QsansX),
    pack(QsansX,RQ),
    L=[PackX|RQ].

% cas d'arrêt
p(X,[],[X],[]).

% cas où l'élément est différent du suivant
p(X,[Y|Q],PackX,QsansX) :-
    X \= Y,
    PackX = [X],
    QsansX = [Y|Q].

% cas où l'élément est égal au suivant
p(X,[Y|Q],PackX,RQ) :-
    X = Y,
    p(X,Q,PackR, RQ),
    PackX = [X|PackR].


encode([],[]).

encode([X|Q],S) :-
    pack([X|Q],L),
    transform(L,S).

transform([],[]).

transform([Pack|Q],L) :-
    length(Pack, N),
    Pack = [X|_],
    transform(Q,RQ),
    L=[[N,X]|RQ].