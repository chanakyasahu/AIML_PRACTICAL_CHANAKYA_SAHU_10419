%  Perform append, reverse, membersearch, and list length operation in the list using  prolog


mylist([1,2,3,4,5]).
rev_list([],[]). % orignal and rev list
rev_list([H|T],R):-
    rev_list(T,R1),
    append(R1,[H],R).

% query - mylist(L),rev_list(L,R)

mylist([1,2,3,4,5]).
insert_3rd(X,[A,B|T],[A,B,X|T]).



mylist([1,2,3,4,5]).
append([],L,L).
append([H|T],L,[H|R]):-
    append(T,L,R).

