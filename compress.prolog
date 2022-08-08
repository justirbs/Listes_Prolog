% cas d'arrêt
compress([],[]).
compress([X],[X]).

% cas où l'élément est différent de son suivant
compress([X,Y|Q],L) :-
    X\=Y,
    compress([Y|Q],RQ),
    L = [X|RQ].

% cas où l'élément est égal à son suivant
compress([X,Y|Q],L) :-
    X=Y,
    compress([Y|Q],RQ),
    L = RQ.
   
