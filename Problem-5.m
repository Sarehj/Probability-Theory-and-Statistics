%% Problem 5 - Testing for normality
load birth.dat
figure(1)
subplot(2,2,1), normplot(birth(:,3)) %%weight of the child
subplot(2,2,2), normplot(birth(:,4)) %%age of the mother
subplot(2,2,3), normplot(birth(:,16)) %%length of the mother
subplot(2,2,4), normplot(birth(:,15)) %%weight of the mother
jbtest(birth(:,3)) %%weight of the child
jbtest(birth(:,4)) %%age of the mother
jbtest(birth(:,16)) %%length of the mother
jbtest(birth(:,15)) %%weight of the mother
