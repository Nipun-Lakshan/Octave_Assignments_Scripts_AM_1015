% Command to clears all variables and resets the workspace
clear all

% Command to clear the command window
clc

% Defining a row vector to represent the hours Sithum worked
hours = [0 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6]

% Defining a row vector to represent the income Sithum earned
income = [0 4 12 15 25 32 28 37 35 38 39 42]

% Fit a linear polynomial (degree 1) to the hours and income data
model = polyfit(hours, income, 1)

% Predict income values using the fitted model
predict = polyval(model, hours)

% Plot hours vs income with blue circles
plot(hours, income, 'bo')

% Retain the current plot
hold on

% Plot the predicted income values against hours worked
plot(hours, predict)

% Set the title of the plot
title("Sithum's Income vs Hours Worked")

% Label the x-axis
xlabel('Hours Worked')

% Label the y-axis
ylabel('Income in Dollars ($)')

% Enable grid lines on the plot
grid on

% Release the current plot
hold off

% Predict income for 4.15 working hours
predicted_income = polyval(model, 4.15)

% Calculate working hours for $50 income
working_hours = (50 - model(2)) / model(1)

## The estimated model (For Income):  (7.3728 x hours) + 1.9290
## Predicted_Income = 32.526
## Working_hours = 6.5201

