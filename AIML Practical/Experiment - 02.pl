%Arthmetic 

add(A,B,R):-
    R is A+B.
sub(A,B,S):-
    S is A-B.

mul(A,B,M):-
    M is A*B.

div(A,B,D):-
    D is A/B.



% Factorial
fact(0,1).
fact(N,F):-
    N > 0,
    N1 is N - 1,
    fact(N1,F1),
    F is N * F1.     

%Query :- add(5, 10, R)
%Query :- sub(10, 5, R)
%Query :- mul(5, 10, R)
%Query :- div(10, 2, R)

%Query :- fact(5, F)
