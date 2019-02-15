% More MATLAB functions:

% mink - find k smallest elements of an array.
% maxk - find k largest elements of an array.
% bounds - find smallest and largest elements of an array.
% mean - average or mean value of an array.
% median - fund median value of an array.
% mode - find most frequent values in an array.
% std - standard deviation.
% var - variance.
% corrcoef - correlation coefficients.
% cov - covariance.

% Standard deviation and Variance:

% Standard deviation is a measure of how spread out numbers are
% (or a quantity expressing by how much the members of a group
% differ from the mean value for the group).
% The formula for standard deviation is the square root of the variance.
% The formula for the variance is the squared differences from the mean.

clear all;
clc;

load fisheriris.mat;

%Data = meas;
Data = [2,2,3,3,4,4,5,5,5,5,6,7,7,8,9];
Mean = mean(Data(:,:))
Median = median(Data(:,:))

Smallest_3_Values_Rows = mink(Data(:,1),3,1)
Smallest_3_Values_Cols = mink(Data(:,1),3,2)

Mode = mode(Data)

Standard_Deviation = std(Data)
Variance = var(Data)
Correlation_Coefficients = corrcoef(Data)
Coveriance = cov(Data)

% Training and Testing:

% The training phase, where a classifier is learned from a training set
% of measurements representative of the data.
% The testing phase, the learned classifier is used to discriminate
% between measurements in a 'test set' that were not neccessarily
% encountered during the training phase.

% Ensure the test set meets the following:
% - Is large enough to yield statistically meaningful results.
% - Is representative of dataset as a whole...
%   In other words, don't pick a test set with different characteristics from
%   the training set.

% How to avoid overfittiong during the training phase:
%  - Overfitting is the production of an analysis that corresponds too closely
%    or exactly to a particular set of data, and may therefor fail to fit
%    additional data or predict future observations reliably.
% There are two possible explanations for overfitting:
%  - The training data may contain noise, hence the machine learning
%    algorithms may fit the noise into the model and therfor poor performance
%  would be obtained.
%  - Secondly, limited training samples (i.e, small dataset) that are not
%    sufficient to train the model.

% Code to generate training and testing datasets:

clear all;
clc;

load fisheriris.mat;
Data = meas;

Total_Samples = size(Data, 1)
Selected_Samples = 90
assert(Selected_Samples <= Total_Samples)
rand_rows = randperm(Total_Samples)

k = 1;
j = 1;

for i = 1: size(Data, 1)
    if k <= 90
        TR_Temp{i} = Data(rand_rows(i),:);
        k = k + 1;
    else 
        TE_Temp{j} = Data(rand_rows(i),:);
        j = j + 1;
    end
end

Training_Dataset = cell2mat(TR_Temp')
Testing_Dataset = cell2mat(TE_Temp')

%A = [1 2;3 4; 5 6];
%B = [1 2;3 4; 5 5];

[~, index_A, index_B] = intersect(Training_Dataset, Testing_Dataset, 'rows')   