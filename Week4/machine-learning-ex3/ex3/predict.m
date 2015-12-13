function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
% Theta1 has size 25 x 401
% Theta2 has size 10 x 26
% p has size 5000 x 1


% Input Layer
a1 = [ones(m, 1), X]; % results in [5000, 401]

z2 = Theta1 * a1'; % results in [25, 5000]

% Hidden Layer
a2 = sigmoid(z2);  % results in [25, 5000]

a2 = [ones(1, size(a2, 2)); a2]; % results in [26, 5000]

% Output layer
z3 = Theta2 * a2; % results in [10, 5000]

a3 = sigmoid(z3); % results in [10, 5000]

% calculating max on the transpose of a3 so the index 
% result, p, has the expected dimensions [5000, 1]
[val, p] = max(a3', [], 2);







% =========================================================================


end
