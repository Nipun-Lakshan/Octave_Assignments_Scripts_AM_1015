% Command to Clear the Workspace
clear all

% Command to Clear the Command Window
clc

% Defining the Variable X
x = [0:19]

% Defining the Variable Y
y = [1 3 6 10 12 14 16 18 20 22 25 29 33 35 38 40 47 49 50 53]

% Calculate the Parameters
N = 20;  % Number of data points
sum_x = sum(x)
sum_y = sum(y)
sum_x2 = sum(x.^2)
sum_xy = sum(x .* y)

% Calculate m and b
m = (N*sum_xy - sum_x*sum_y) / (N*sum_x2 - sum_x^2)
b = (sum_y - m*sum_x) / N

% Using Polyfit and Polyval Commands
model = polyfit(x, y, 1)
predict = polyval(model, x)

% Plot the dataset.
plot(x, predict)
hold on
plot(x, y, 'g+')
xlabel('Time')
ylabel('Dependent Variable')
title('Best - Fitted Line for Dataset')
grid on
hold off
