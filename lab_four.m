clear all;
clc;

% Lab on K-Means;

% Define a dataset:
data = [185, 170, 168, 179, 182, 188; 72, 56, 60, 68, 72, 77]
data = transpose(data);

% Run K-Means:
%[index, cen] = kmeans(transpose(data), 2)
clusters = kmeans(data, 2)

% Plot data:
silhouette(data, clusters)