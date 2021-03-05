%% Update Q-Tables Function %%
% Author: Eslam Eldeeb
% Generated on: 05-March-2021 20:59:21

% This function updates the Q-tables using constant-alpha and incremental mean algorithms.

% It accepts 4 variables:
% Episode: Current state, reward, game status according to the given ploicy.
% Q: Corresponding Q-tables.
% alpha: Learning rate.
% gamma: Discount ratio.


% It returns 1 variable:
% Q: Corresponding updated Q-tables.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Q = Update_Q(Episode, Q, alpha, gamma)

Rewards_total = Episode(:,5);
Discounts = gamma.^[1:length(Rewards_total)];
State = Episode(:,1:3);
action = Episode(:,4);
reward = Episode(:,5);
for i = 1:length(Rewards_total)
    jj = ((State(i,1)+1)*State(i,2)*2) - (~State(i,3));
%     State
%     jj
    Old_Q = Q(jj,action(i)+1);
    Q(jj,action(i)+1) = Old_Q + alpha * (sum(reward(i)*Discounts(i)) - Old_Q); % Constant-alpha and incremental mean algorithms
end

end