%% Update Q-Tables Function %%
% Author: Eslam Eldeeb
% Generated on: 05-March-2021 21:05:42

% This is the test file for the reinforcement learning algorithm for 21 game.

% Choose an appropriate values for alpha, gamma, epsilon_start, epsilon_decay, epsilon_min, and num_episodes.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Clear %%
clear all;
close all;
clc;


%% Constants %%
alpha = 0.02;
gamma = 1;
epsilon_start = 1;
epsilon_decay = 0.9999;
epsilon_min = 0.05;
num_episodes = 5000000;


%% Initialization %%
Reward_Total = [];


%% Adaptive %%
[policy, Q] = Epsilon_Greedy_Learning_21(num_episodes, alpha, gamma, epsilon_start, epsilon_decay, epsilon_min);


%% Test %%
for i = 1:50
    Done = 0;
    State = Game_21();
    while(Done == 0)
    j = (State(1)+1)*State(2)*2 - (~State(3));
    Action = policy(j);
    [State_New, Reward, Done] = Play_21(Action, State);
    State = State_New;
%     State_New
%     Reward
    end
    Reward_Total = [Reward_Total Reward];
end
