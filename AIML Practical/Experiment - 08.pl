%Implement the A* Search algorithm to find the optimal path using path cost
%and heuristic estimate

edge(a,b,5).
edge(a,c,4).
edge(b,d,3).
edge(c,d,1).
edge(d,e,2).

h(a,7).
h(b,5).
h(c,3).
h(d,2).
h(e,0).

astar(Start, Goal, Path) :-
    search([(0,Start,[Start])], Goal, Path).

search([(F,Goal,Path)|_], Goal, Path).

search([(F,Node,Path)|Rest], Goal, FinalPath) :-
    findall((NewF,Next,[Next|Path]),
            (
            edge(Node,Next,C),
            h(Next,H),
            NewF is C + H
        ),
        Children
    ),
    append(Rest, Children, NewList),
    sort(NewList, SortedList),
    search(SortedList, Goal, FinalPath).

%Query:- astar(a,e,Path)
