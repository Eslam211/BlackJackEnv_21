%% 21 Game Algorithm Function %%
% Author: Eslam Eldeeb
% Generated on: 05-March-2021 17:34:35

% This function corresponds to the results of playing 21 game.

% It accepts 2 variables:
% Action: The action taken, whether hit (1) to draw another card or stick (0) to stick with the given sum.
% State: The corresponding state (previous sum, dealer's card, and whether there is an ace or not).

% It returns 3 variable:
% State_New: New state.
% Reward: Reward after action (0 if game hasn't ended, -1 if the player loses, and 1 if the player wins).
% Done: Indication whether the game has ended or not yet (0 = end, 1 = not yet).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [State_New, Reward, Done] = Play_21(Action, State)

Cards = [1:10 10 10 10]; % All possible cards. 1 = Ace, which can be equal to 1 or 11. Jack, Queen, and King are valued by 10.

if (Action == 0) % If the player chooses to stick
    State_New = State;
    Dealer_sum = State(2);
    while (Dealer_sum < 22)
        r_Card = randi([1 13],1);
        Dealer_sum = Dealer_sum + Cards(r_Card);
    end
    
    Dealer_sum = Dealer_sum - r_Card; % The dealer largest sum before 21
    
    if (Dealer_sum>State(1)) % If the dealer's largest sum is > player's stick sum, the player loses and the game ends
        Reward = -1;
        Done = 1;
    else % If the dealer's largest sum is < player's stick sum, the player wins and the game ends
        Reward = 1;
        Done = 1;
    end
    
else % If the player chooses to hit
    State_New = State;
    Player_sum = State(1);
    r_Card = randi([1 13],1);
    Player_sum = Player_sum + Cards(r_Card);
    if(Player_sum==21) % If the player's sum = 21, the player wins and the game ends
        State_New(1) = Player_sum;
        Reward = 1;
        Done = 1;
    elseif(Player_sum>21) % If the player's sum > 21
        if(State(3)==1) % If there is a usable ace, convert it to 1 instead of 11 and the game continues
            Player_sum = Player_sum-10;
            State_New(1) = Player_sum;
            State_New(3) = 0;
            Reward = 0;
            Done = 0;
        else % If there is not a usable ace, the player loses and the game ends
            State_New(1) = Player_sum;
            Reward = -1;
            Done = 1;
        end
    else % If the player's sum < 21, the game continues
        State_New(1) = Player_sum;
        Reward = 0;
        Done = 0;
    end
end