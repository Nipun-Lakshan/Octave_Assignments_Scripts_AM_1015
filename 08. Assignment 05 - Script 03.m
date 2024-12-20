% Command to clears all variables and resets the workspace
clear all

% Command to clear the command window
clc

% Defining a row vector to represent the hours
hours = [0 1 2 3 4 5]

% Defining a row vector to represent the income
income = [0 15 28 30 53 65]

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
title("Income vs Hours Worked")

% Label the x-axis
xlabel('Hours Worked')

% Label the y-axis
ylabel('Income in Dollars ($)')

% Enable grid lines on the plot
grid on

% Predict income for 7.5 working hours
predicted_income = polyval(model, 7.5)

% Calculate the Parameters

N = 6;  % Number of data points
sum_x = sum(hours)
sum_y = sum(income)
sum_x2 = sum(hours.^2)
sum_xy = sum(hours .* income)

% Calculate m and b
m = (N*sum_xy - sum_x*sum_y) / (N*sum_x2 - sum_x^2)
b = (sum_y - m*sum_x) / N

% Number of Hours
Number_Of_Hours = (191 - b)/12.6

% Analytically Graph
y = m*hours + b

% Plot the graph
plot(hours, y, "*g")

% Release the current plot
hold off

# Green Colour - Analytical Line
# Blue Colur - Polyfit Line
# Blue Circles - Data Points
