function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

h = X*theta;
first = (1/(2*m))*(h-y)'*(h-y);
second = (lambda/(2*m))*sum(theta(2:end,1).^2);
J = J+ first + second;

left = (1/m)*(h-y)'*X;
n = size(theta)(1);
for j=1:n
    if j == 1
        grad(j,1) = left(1,j);
    else
        grad(j,1) = left(1,j) + (lambda/m)*theta(j,1);
    end
end

% =========================================================================

grad = grad(:);

end
