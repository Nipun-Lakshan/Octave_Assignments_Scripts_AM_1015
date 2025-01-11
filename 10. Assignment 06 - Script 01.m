# Command to Clear Command History
history -c

# Command to Clear Workspace with all Variables and Loaded Packages
clear all

# Command to Clear Command Window
clc

## Assignment 06 - Question 03 - Codes

Kn = zeros(1, 31); # 30 Predictions + 1 Initial Value
Hn = zeros(1, 31); # 30 Predictions + 1 Initial Value

Kn(1) = 800; # Initial Value
Hn(1) = 500; # Initial Value

# Calculate The Values
for i=1:30
  Kn(i+1) = 0.65 * Kn(i) + 0.30 * Hn(i);
  Hn(i+1) = 0.70 * Hn(i) + 0.35 * Kn(i);
endfor

n = [0:30]; # First 30 Days with Initial Value

# Plot The Graph
figure(1);
plot(n, Kn, '*r', n, Hn, '*b');
title('Car Distribution Over 30 Days');
xlabel('Days');
ylabel('Car Count');
grid on;
legend('Katunayaka', 'Hambanthota', 'location', 'northwest');

## Assignment 06 - Question 04 - Codes

# Plot The Trajectory of The System
figure(2);
plot(Kn, Hn, '*k');
title('Trajectory')
xlabel('Cars in Katunayaka');
ylabel('Cars in Hambanthota');
grid on;
