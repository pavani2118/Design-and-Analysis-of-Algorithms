% Graph 1 - Cycle (Green edges)
s1 = [4 4 3 2 1];
t1 = [5 3 2 1 5];

% Graph 2 - Star to node 11 (Magenta edges)
s2 = repmat(11, 1, 10);   % node 11 connected to all others
t2 = 1:10;

% Graph 3 - Zigzag path (Red edges)
s3 = [4 8 3 7 2 6 1 10 5 9];
t3 = [8 3 7 2 6 1 10 5 9 4];

% Combine all edge lists
all_s = [s1, s2, s3];
all_t = [t1, t2, t3];

% Create the graph
G = graph(all_s, all_t);

% Plot the graph with force layout
h = plot(G, 'Layout', 'force');

% Define edge indices for each group
cycleEdges = 1:5;       % First 5 edges → green
starEdges = 6:15;       % Next 10 edges → magenta
zigzagEdges = 16:25;    % Last 10 edges → red

% Convert edges to node pairs for highlighting
edges = [all_s', all_t'];

% Highlight cycle edges in green
for i = cycleEdges
    highlight(h, edges(i,1), edges(i,2), 'EdgeColor', 'green');
end

% Highlight star edges in magenta
for i = starEdges
    highlight(h, edges(i,1), edges(i,2), 'EdgeColor', 'magenta');
end

% Highlight zigzag edges in red
for i = zigzagEdges
    highlight(h, edges(i,1), edges(i,2), 'EdgeColor', 'red');
end
