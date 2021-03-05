%% Epsilon Greedy Learning Function %%
% Author: Eslam Eldeeb
% Generated on: 05-March-2021 19:19:09

% This function trains an agent to play 21 game.

% It accepts 6 variables:
% num_episodes: Number if times the agent plays the game.
% alpha: Learning rate.
% gamma: Discount ratio.
% epsilon_start: Exploration rate start value.
% epsilon_decay: Exploration rate decay rate.
% epsilon_min: Min exploration rate.

% It returns 2 variable:
% Policy: Followed actions at each state.
% Q: Corresponding Q-tables.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [Policy,Q] = Epsilon_Greedy_Learning_21(num_episodes, alpha, gamma, epsilon_start, epsilon_decay, epsilon_min)

Num_Actions = 2;

Q = zeros(32*10*2,Num_Actions);

epsilon = epsilon_start;

for i = 1:num_episodes
    epsilon = max(epsilon*epsilon_decay,epsilon_min); % Update epsilon while comparing it to its min

    Episode = Generate_Episode_Policy(Q, epsilon); % Generate an episode according to the given policy
    Q = Update_Q(Episode, Q, alpha, gamma); % Update the Q-tables
    [~,Policy] = max(Q, [], 2); % Form the policy
    Policy = Policy - ones(length(Policy),1);

end

end