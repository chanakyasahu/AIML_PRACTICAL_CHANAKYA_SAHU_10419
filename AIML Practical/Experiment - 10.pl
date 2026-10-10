% Simulated Annealing 

value(1,9).
value(2,4).
value(3,1).
value(4,6).
value(5,8).

anneal(X,Best) :-
    step(X,5,Best).

step(X,0,X).

step(X,T,Best) :-
    Y is X+1,
    value(X,V1),
    value(Y,V2),
    ( V2 < V1 ->
        Next = Y
    ;
        Next = X
    ),
    T1 is T-1,
    step(Next,T1,Best).

%Query:- anneal(1,Best).