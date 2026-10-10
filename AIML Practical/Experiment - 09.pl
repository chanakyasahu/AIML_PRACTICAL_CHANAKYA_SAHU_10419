%Implement Hill Climbing for optimization problems

value(1,5).
value(2,8).
value(3,9).
value(4,8).
value(5,5).

hill_climb(X,Best):-
    climb(X,Best).

climb(X,X):-
    \+ better(X,_).

climb(X,Best):-
    better(X,Y),
    climb(Y,Best).

better(X,Y):-
    value(X,V1),
    Y is X+1,
    value(Y,V2),
    V2 > V1.

% Query:- hill_climb(1,Best).