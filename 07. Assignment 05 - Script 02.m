# Command to Clear The Workspace
clear all

# Command to Clear The Command Window
clc


### Quetion 02

# Question b

% Initialize Parameters

P0 = 200;              % Chicken Population
years = 15;            % Number of Years
harvest = 80;          % Chickens Harvested Annually
growth_rate = 1.2;     % Growth Rate

% Initialize Array

population = zeros(1, years + 1);
population(1) = P0;

% Initialize the Loop

for n = 1:years
    population(n + 1) = growth_rate * population(n) - harvest;
end

% Plot the Chart

plot(0:years, population);
xlabel('Years');
ylabel('Chicken Population');
title('Chicken Population Over 15 Years');
grid on;

# Question d

# Command to Clear The Workspace
clear all

# Command to Clear The Command Window
clc

% Initialize Parameters

initial_populations = [200, 400, 600]; % Initial chicken populations
years = 15;                            % Number of Years
harvest = 80;                          % Chickens Harvested Annually
growth_rate = 1.2;                     % Growth Rate

% Initialize Matrix

population_matrix = zeros(length(initial_populations), years + 1);

% Initialize Loop

for i = 1:length(initial_populations)
    P0 = initial_populations(i);
    population = zeros(1, years + 1);
    population(1) = P0;

    for n = 1:years
        population(n + 1) = growth_rate * population(n) - harvest;
    end

    population_matrix(i, :) = population;
end

% Plot the Chart

figure;
hold on;
plot(0:years, population_matrix(1, :), "b");
plot(0:years, population_matrix(2, :), "g");
plot(0:years, population_matrix(3, :), "r");
hold off;

% Add labels, legend and title

xlabel('Years');
ylabel('Chicken Population');
title('Chicken Population Over 15 Years');
legend('show', 'Location', 'northeast');
grid on;






