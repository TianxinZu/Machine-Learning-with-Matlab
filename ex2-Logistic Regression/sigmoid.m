function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% g = -z;
g = g - z;

% g = e^-z
g = exp(g);

% g = 1 + e^-z
g = g + 1;

% g = 1 / (1 + e^-z)
g = 1 ./ g;


% =============================================================

end
