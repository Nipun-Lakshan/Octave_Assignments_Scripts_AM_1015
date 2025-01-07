% Clear The Workspace With Removing All Variables & Functions
clear all;

% Clear The Command History
history -c;

% Clear The Command Window
clc;

% Create a Variable To Store X Axis Values
year = [0:21]; % t = 0 -> 1790, t = 1 -> 1800

% Create a Variable To Store Y Axis Values
Population =[3.929, 5.308,  7.24, 9.638, 12.866, 17.069, 23.192, 31.443, 38.558, 50.156, 62.948,75.995, 91.972, 105.711, 122.755, 131.669, 150.697, 179.323, 203.212, 226.505, 248.71, 281.416];

% Plot the Scatterplot
figure;
plot(year, Population, 'r*');
grid on;
xlabel('Time (t in decades from 1790)');
ylabel('Population (in millions)');
title('Observed Population vs. Time');

% Calculate the Value for b
dan = zeros(1,21);
for i=1:21
  dan(i) = Population(i+1) - Population(i);
endfor
dan;

an_new = Population(1:21);
X = (400 - an_new) .* an_new;
b = sum(X.*dan)/sum(X.*X)

% Predict Future Population Values
pred = zeros(1,35); % 35 Values = 1 Initial Value + 34 Pred Values
pred(1) = 3.929; % Initial population value

new_year = [0:34];

for i = 1:34
  pred(i+1) = pred(i)+b*(400-pred(i)) * pred(i);
endfor
pred

% Plot Predicted and Observed Populations
figure;
plot(year, Population, 'r*', new_year, pred, 'b*');
xlabel('Time (t in decades from 1790)');
ylabel('Population (in millions)');
title('Predicted Population vs. Time');
legend('Observed', 'Predicted', 'location', 'northwest')

% 2012 Predicted Value
Estimated_2012 = pred(23)

% 2022 Predicted Value
Estimated_2022 = pred(24)

% New b value for comparison
b_new = 0.00073
pred_1 = zeros(1,35); % 35 Values = 1 Initial Value + 34 Pred Values
pred_1(1) = 3.929;

for i = 1:34
  pred_1(i+1) = pred_1(i)+b_new*(400-pred_1(i)) * pred_1(i);
endfor
pred_1

% Plot all Predictions
figure
plot(year, Population, 'r*', new_year, pred, 'b*', new_year, pred_1, 'g*');
xlabel('Time (t in decades from 1790)');
ylabel('Population (in millions)');
title('Predicted Population vs. Time');
legend('Observed', 'Predicted', 'Predicted with New b Value', 'location', 'northwest');

% 2033 Predicted Value
Estimated_2033 = pred_1(25)

% 2050 Predicted Value
Estimated_2050 = pred_1(27)
