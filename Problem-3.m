%% Problem 3: Confidence interval for Rayleigh distribution
load wave_data.mat
subplot(2,1,1), plot(y(1:end)) %y(1:end)
subplot(2,1,2), hist_density(y)
hold on % holds the current plot
n = length(y);
ybar = mean(y);
my_est = sqrt(2/(pi*n^2))*sum(y);
sigma = sqrt((4 - pi)/n *pi ) * my_est;
lower_bound = my_est -norminv(1-alpha/2) * sigma;
upper_bound = my_est + norminv(1-alpha/2) * sigma;
plot(lower_bound, 0, 'g*')
plot(upper_bound, 0, 'g*')
plot(0:0.1:6, raylpdf(0:0.1:6, my_est), 'r')
hold off
int_leng=(upper_bound-lower_bound);
