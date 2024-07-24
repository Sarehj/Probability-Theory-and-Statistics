%% Problem 2: Maximum likelihood/Least squares
M = 1e4;
b = 4;
x = raylrnd(b, M, 1);
hist_density(x, 40)
hold on
my_est_ml = sqrt(1/(2*M)*sum(x.^2)); % ML estimate
my_est_ls = sqrt(2/(pi*M^2))*sum(x); % LS estimate
plot(my_est_ml, 0, 'r*')
plot(my_est_ls, 0, 'g*')
plot(b, 0, 'ro')
plot(0:0.1:6, raylpdf(0:0.1:6, my_est_ml), 'r')
hold off
