% Clear Command History
history -c

% Clear the Workspace
clear all

% Clear the Command Window
clc

% Define the variables
initial_deposit = 5000 %In Rupees
annual_deposit = 2000  %In Rupees
interest_rate = 0.05   %Yearly Based
num_years = 10         %Deposit Period

% Initialize the account balance array
balance = zeros(1, num_years+1)
balance(1) = initial_deposit

% Set the balance for the first year
balance(2) = initial_deposit * (1 + interest_rate) + annual_deposit

% Loop through the remaining years
for year = 3:num_years+1
    balance(year) = balance(year - 1) * (1 + interest_rate) + annual_deposit
end

% Draw a Figure
years = 0:num_years
plot(years, balance, '-o', 'LineWidth', 1, 'MarkerSize', 3)
xlabel('Year')
ylabel('Amount (Rs.)')
title('Account Balance')
grid on
