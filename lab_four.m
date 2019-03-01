clear all;
clc;
close all
rng(0)

% Lab on K-Means;

% Define a dataset:
% data = [185, 170, 168, 179, 182, 188; 72, 56, 60, 68, 72, 77]
% data = transpose(data);

% Run K-Means:
% clusters = kmeans(data, 2);
% [idx, cen] = kmeans((data), 2)

% Plot data:
% silhouette(data, clusters)

xmin = 100;
xmax = 300;
n = 2000;

x = (xmin + rand(1, n) * (xmax - xmin))
x = x';

xmin = 150;
xmax = 250;

y = (xmin + rand(1, n) * (xmax - xmin))
y = y';

dataset = [x y];

[idx, cen] = kmeans((dataset), 3);

figure;
hold on

plot(dataset (idx==1,1), dataset (idx==1,2), 'r.', 'MarkerSize', 12);

plot(dataset (idx==2,1), dataset (idx==2,2), 'b.', 'MarkerSize', 12);

plot(dataset (idx==3,1), dataset (idx==3,2) ,'g.', 'MarkerSize', 12);

plot(cen(:,1), cen(:,2), 'kx', 'MarkerSize', 15, 'LineWidth', 3)
 
legend('Cluster 1', 'Cluster 2', 'Cluster 3', 'Centroids', 'Location', 'NE');

title 'Cluster Assignments and Centroids';

hold off

