%% Problem 7: Multiple linear regression
load birth.dat
mom_l=birth(:,16);
child_w=birth(:,3);
x1=ones(length(birth),1);
X=[x1,mom_l];
[beta,~,~,~,stats1]=regress(child_w,X);
figure(1)
scatter(mom_l,child_w) %child weight to a mothers length
hold on
plot(mom_l,X*beta) %estimated weight based off of mothers length
mom_w=birth(:,15); %weight
mom_s=birth(:,20); %smok
mom_d=birth(:,26); %drink
mom_s(mom_s<3)=0;
mom_s(mom_s==3)=1;
mom_d(mom_d<2)=0;
mom_d(mom_d==2)=1;
var=[x1, m_w, mom_s, mom_d];
[b,bint,res,rint,stats]=regress(child_w,var);
bint
R2 = stats(1);
interval = abs(bint(:,1)-bint(:,2));
figure(2)
subplot(2,1,1), normplot(res)
subplot(2,1,2), hist(res)
