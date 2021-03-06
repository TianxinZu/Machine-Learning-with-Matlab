function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

for i = 1 : m
    J = J - y(i, 1) * log(sigmoid(theta' * X(i, :)'));
    J = J - (1 - y(i, 1)) * log(1 - sigmoid(theta' * X(i, :)'));
end

% Regularization term: theta0 should not be regularized
for i = 2 : size(theta)
    J = J + lambda / 2 * theta(i)^2;
end

J = J / m;


for i = 1 : size(theta)
    for j = 1 : m
        grad(i) = grad(i) + (sigmoid(theta' * (X(j, :))') - y(j, 1)) * X(j, i);
    end
end

% Theta0 should not be regularized
for i = 2 : size(theta)
    grad(i) = grad(i) + lambda * theta(i);
end

grad = grad ./ m;


% =============================================================

end
