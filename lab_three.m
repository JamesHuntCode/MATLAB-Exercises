clear, clc, close all

rng(0)

data(:,1) = randn(30,1)
data(:,2) = 3.4 + 1.2 * data(:,1)
data(:,2) = data(:,2) + 0.2 * randn(size(data(:,1)))
data = sortrows(data, 1)