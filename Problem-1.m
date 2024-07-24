%% Simulation of confidence intervals
% Parameters:
n = 25; % Number of measurements
mu = 2; % Expected value
sigma = 1; % Standard deviation
alpha = 0.05;
%Simulation of n*100 observations. (n observations for ...each interval and 100 intervals)
x = normrnd(mu, sigma,n,100); %n x 100 matrix of observations
%Estimation of mu by mean
xbar = mean(x); % vector containing 100 means.
%Computation of upper and lower limits
lowerl = xbar - norminv(1-alpha/2)*sigma/sqrt(n);
upperl = xbar + norminv(1-alpha/2)*sigma/sqrt(n);
%Plot all the intervals making the ones which do not cover ...the true value red
figure(1)
hold on
for k=1:100
if upperl(k) < mu
plot([lowerl(k) upperl(k)],[k k],'r')
elseif lowerl(k) > mu
plot([lowerl(k) upperl(k)],[k k],'r')
else
plot([lowerl(k) upperl(k)],[k k],'b')
end
end
%b1 and b2 are only used to make the figure look nice.
b1 = min(xbar - norminv(1 - alpha/2)*sigma/sqrt(n));
b2 = max(xbar + norminv(1 - alpha/2)*sigma/sqrt(n));
axis([b1 b2 0 101]) % Minimizes amount of unused space in ...the figure
%Plot the true value
plot([mu mu],[0 101],'g')
hold off
