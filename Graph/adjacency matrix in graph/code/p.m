% Graph 1
s1 = [4 4 3 2 1];
t1 = [5 3 2 1 5];

% Graph 2
s2 = repmat(11, 1, 10);   % Make it a vector of 11s
t2 = 1:10;

% Graph 3
s3 = [4 8 3 7 2 6 1 10 5 9];
t3 = [8 3 7 2 6 1 10 5 9 4];

% Combine edge lists
all_s = [s1, s2,s3];         % 5 + 10 = 15 elements
all_t = [t1, t2,t3];         % 5 + 10 = 15 elements

% Create the combined graph
combinedG = graph(all_s, all_t);

% Plot
h = plot(combinedG, 'Layout', 'force');
h.EdgeColor = 'green';
