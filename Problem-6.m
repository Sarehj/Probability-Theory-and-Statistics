%% Problem 6: Regression
load moore.dat
l=length(moore);
x1=ones(l,1);
X=[x1,moore(:,1)];
Y=[moore(:,2)];
y1=log(Y);
[beta_hat,bint,~,rint,stats]=regress(y1,X); % β= (β0,β1)T
figure (1)
plot(X(:,2),y1,'o')
hold on
plot(X(:,2),X*beta_hat)
res = X*beta_hat -y1;
R = stats(1)
figure(2)
subplot(2,1,1), normplot(res)
subplot(2,1,2), hist(res)
g=exp([1 2025]*beta_hat); %estimate of transistors/ area units in year 2025
