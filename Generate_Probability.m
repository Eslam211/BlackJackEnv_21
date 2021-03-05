%% Generate Probability Function %%
% Author: Eslam Eldeeb
% Generated on: 05-March-2021 20:24:33

% This function generates action according to probability corresponds to epsilon.

% It accepts 3 variables:
% Q: Corresponding Q-tables.
% epsilon: Exploration rate.
% State: The corresponding state (previous sum, dealer's card, and whether there is an ace or not).

% It returns 1 variable:
% Action: The random chosen action.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Action = Generate_Probability(Q, epsilon, State)

r_explore = rand(1,1);
if(r_explore<epsilon)
    Action = Actions_21();
else
    j = (State(1)+1)*State(2)*2 - (~State(3));
    [~,Action] = max(Q(j,:));
    Action = Action-1;
end
end
