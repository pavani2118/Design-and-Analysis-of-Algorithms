% Define the edges of the directed graph
% For example, an edge from node 1 to node 2, and node 2 to node 3
s = [1 2 3 4];  % source nodes
t = [2 3 4 1];  % target nodes

% Create the directed graph
G = digraph(s, t);

% Plot the graph
plot(G);
