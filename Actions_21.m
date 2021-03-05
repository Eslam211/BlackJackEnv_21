%% Take Action Function %%
% Author: Eslam Eldeeb
% Generated on: 05-March-2021 17:49:42

% This function generates a random action (hit or stick) with equiprobable values (0.5).

% It accepts no variables.

% It returns 1 variable:
% Action: The random chosen action.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Action = Actions_21()
Possible_Actions = 0:1;
r_Action = randi([1 2],1);
Action = Possible_Actions(r_Action);
end