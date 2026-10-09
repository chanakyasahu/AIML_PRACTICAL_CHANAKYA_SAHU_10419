edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(d,g).
edge(d,h).
edge(e,i).
edge(c,f).

dfs(Start,Goal,Spath):-
    dfs_search(Start,Goal,Spath).

dfs_search(Goal,Goal,[Goal]).


dfs_search(Node,Goal,[Node|Path]):-
    edge(Node,Next),
    dfs_search(Next,Goal,Path).

%Query:- dfs(a, f, Spath)