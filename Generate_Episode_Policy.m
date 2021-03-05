%% Generate Episode Function %%
% Author: Eslam Eldeeb
% Generated on: 05-March-2021 19:45:57

% This function plays 21 game according to a given policy.

% It accepts 2 variables:
% Q: Corresponding Q-tables.
% epsilon: Exploration rate.

% It returns 1 variable:
% Episode: Current state, reward, game status according to the given ploicy.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Episode = Generate_Episode_Policy(Q, epsilon)
Episode = []; % Initialize an episode
State = Game_21(); % generate random startup state
Action = Generate_Probability(Q, epsilon, State); % Generate action according to the given policy
Done = 0;
while (Done == 0)
    [State_New, Reward, Done] = Play_21(Action, State);
    Episode = [Episode; State_New Action Reward];
    State = State_New;
end

end