%Implement Breadth-First Search (BFS) to find the shortest path in a graph

% Graph
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(e, f).

% BFS
bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, Path).

bfs_queue([[Goal|Rest]|_], Goal, Path) :-
    reverse([Goal|Rest], Path).

bfs_queue([[Current|Rest]|Queue], Goal, Path) :-
    findall(
        [Next, Current|Rest],
        (edge(Current, Next), \+ member(Next, [Current|Rest])),
        NewPaths
    ),
    append(Queue, NewPaths, UpdatedQueue),
    bfs_queue(UpdatedQueue, Goal, Path).

%Query :- ?bfs(a, f, Path)
