function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

% CODE HERE 

    % Uncomment this for stepping through 
    % xTheta = X*theta;
    % xThetaMinusY = xTheta-y;
    % h = xThetaMinusY';
    
    h = ((X*theta)-y)';
    change1 = alpha * (1/m) * h * X(:, 1);
    change2 = alpha * (1/m) * h * X(:, 2);
    theta(1) = theta(1) - change1; 
    theta(2) = theta(2) - change2; 
    
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
