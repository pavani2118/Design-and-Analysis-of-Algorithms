% Define edges
s = [1 2 3 4 3];
t = [2 3 4 1 3];

% Define weights for each edge
weights = [10 5 3 8 7];

% Create weighted directed graph
G = digraph(s, t, weights);

% Plot the graph and display edge weights as labels
plot(G, 'EdgeLabel', G.Edges.Weight);
