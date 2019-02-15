% Code to add two arrays together.
array = [1,2,3,4; 1,2,3,4]
array2 = [1,2,3,4; 1,2,3,4; 1,2,3,4]

array3 = [array;array2]

% Code to create an array of zeros.
array4 = zeros(6, 3)

% Common functions:

% avg = get average of an array.
% length = length of vector or largest array dimension.
% ndims = number of array dimensions.
% numel = number of array elements.
% size = array dimensions.
% sort = sorts array in ascending order.
% sortrows = sorts rows in ascending order.
% transpose or ' = transpose.
% circshift = shifts array circularly.
% randperm = random permutation.

% sqrtm = matrix square root.
% min, max, mean, sum, std...
% rem = remainder after devision.
% round = round to nearest decimal or integer.
% prod = product of array elements.
% cumsum = cumulative sum.
% cumprod = cumulative product.
% magic = constructs an array from 1 -> n^2 with equal r,c,d sums.
% magic also produces valid magic squares for all n>0 except n=2.

length(array3)
ndims(array3)
numel(array4)
size(array4)
sort(array3)
sortrows(array3)
transpose(array3)
circshift(array3, [1,1])
randperm(6, 6)

sqrtm([1,2; 1,2])

% Get the maximum value in each column of a matrix.
% Second ':' means the column, ':' means all.
maximum = max(array3(:, :))

% Find the index of the maximum value (specified above).
%[max, idx] = max(array3(:, :))

test_array = array3(array3 >= 2)
test_array = magic(5)

% Data normalisation:

% Data normalisation is a method to standardize the range of independent
% variables or features of data.

% Data is normalised because machine learning algorithms can converge much
% faster on normalised data.




