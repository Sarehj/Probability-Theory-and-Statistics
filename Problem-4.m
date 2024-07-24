%% Problem 4: Distributions of given data
load birth.dat
figure(1)
subplot(2,2,1), hist_density(birth(:,3));
subplot(2,2,2), hist_density(birth(:,4));
subplot(2,2,3), hist_density(birth(:,16));
subplot(2,2,4), hist_density(birth(:,15));
x = birth(birth(:, 20) < 3, 3); %non-smokers
y = birth(birth(:, 20) == 3, 3); %smokers
figure(2)
subplot(2,2,1), boxplot(x),
axis([0 2 500 5000])
title('Non smokers')
subplot(2,2,2), boxplot(y),
axis([0 2 500 5000])
title('Smokers')
subplot(2,2,3:4), ksdensity(x),
hold on
[fy, ty] = ksdensity(y);
plot(ty, fy, 'r')
hold off
xx=birth(birth(:,26) < 2, 3); %non drinkers
yy=birth(birth(:,26) == 2, 3); %drinkers
figure(3)
subplot(2,2,1), boxplot(xx),
axis([0 2 500 5000])
title('Non-drinkers')
subplot(2,2,2), boxplot(yy),
axis([0 2 500 5000])
title('Drinkers')
subplot(2,2,3:4), ksdensity(xx),
hold on
[fy, ty] = ksdensity(yy);
plot(ty, fy, 'r')
hold off
