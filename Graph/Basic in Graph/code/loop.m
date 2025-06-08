% Define edges including a loop on node 3
s = [1 2 3 4 3];  % source nodes
t = [2 3 4 1 3];  % target nodes (last edge is a loop on node 3)

% Create directed graph
G = digraph(s, t);

% Plot the graph
plot(G);
