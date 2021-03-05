%% Update Q-Tables Function %%
% Author: Eslam Eldeeb
% Generated on: 05-March-2021 21:03:29

% This is the test file for the random actions choosing for 21 game.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Clear %%
clear all;
close all;
clc;


%% Initialization %%
Reward_Total = [];

for i = 1:50
    Done = 0;    
    
%     Action = Actions_21(); % Choose an action randomly
    State = Game_21(); % Start playing from a random state
%     Print_Action = [Print_Action; Action];
    while (Done == 0)
        
        Action = Actions_21(); % Choose an action randomly
        [State_New, Reward, Done] = Play_21(Action, State);
        State = State_New;
        
        
%         Print_Cards = [Print_Cards; r_Card];
%         Print_Action = [Print_Action; Action];
%         Print_Reward = [Print_Reward; Reward];
%         Print_Done = [Print_Done; Done];
    end
%     Print_Cards = [Print_Cards; 0];
%     Print_All = [Print_State Print_Action Print_Cards Print_Reward Print_Done]
    Reward_Total = [Reward_Total Reward];
end


