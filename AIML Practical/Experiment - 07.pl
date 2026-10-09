%Implement Greedy Best-First Search using a heuristic function to find a path in a graph

edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(e,g).

h(b,4).
h(c,5).
h(d,3).
h(e,2).
h(f,1).
h(g,0).

best_first(Start,Goal) :-
    search([Start],Goal).

search([Goal|_],Goal) :-
    write(Goal).

search([Node|_],Goal) :-
    write(Node), write(' -> '),
    find_best(Node,Next),
    search([Next],Goal).

find_best(Node,Next) :-
    edge(Node,Next),h(Next,H),
    \+ (edge(Node,Other), h(Other,H2), H2 < H).

%Query :- best_first(a,g)