%% 21 Game Function %%
% Author: Eslam Eldeeb
% Generated on: 05-March-2021 16:51:14

% This function generates a random startup state.

% It accepts no variables.

% It returns 1 variable:
% State: The random startup state.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function State = Game_21()

States_Sum = 0:31; % Player's current sum
States_Face = 1:10; % Dealer's face up card
States_Ace = 0:1; % Whether or not the player has a usable ace (0 = No, 1 = Yes)

r_Sum = randi([1 21],1);
r_Face = randi([1 10],1);
r_Ace = randi([1 2],1);

State = [States_Sum(r_Sum) States_Face(r_Face) States_Ace(r_Ace)];

end