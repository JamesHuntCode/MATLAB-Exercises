clear, clc, close all

rng(0)

% Get random (yet controlled) data:
data(:,1) = randn(30,1)
data(:,2) = 3.4 + 1.2 * data(:,1)
data(:,2) = data(:,2) + 0.2 * randn(size(data(:,1)))
data = sortrows(data, 1)

% Compute the mean:
mean_value = mean(data)

new_values = [;];

% Subtract the mean from all samples:
for i = 1 : 2
    if i == 1
        
        % Subtract mean from column 1:
        for j = 1 : numel(data(:, i))
            new_values(j, i) = data(j, i) - mean_value(:, i);
        end
        
    else 
        
        % Subtract mean from column 2:
        for j = 1 : numel(data(:, i))
            new_values(j, i) = data(j, i) - mean_value(:, i);
        end
        
    end
        
end

new_values

% Plot old values:
%plot(data)

%hold on

% Plot new values:
%plot(new_values)

% Compute covariance:
cov(new_values)



