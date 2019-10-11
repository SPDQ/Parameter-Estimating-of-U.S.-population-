clear;clc;
pop=[3.9, 5.3, 7.2, 9.6, 12.9, 17.1, 23.2, 31.4, 38.6, 50.2, 62.9, 76.0, ...
   92.0, 106.5, 123.2, 131.7, 150.7, 179.3, 204.0, 226.5, 251.4, 281.4];%population
%pop=pop(1:12);%when using 1790-2000, omit this line
year=0:length(pop)-1;
%P(t)=3.9exp(rT) was changed to linear form: log(P(t))=log3.9+rT
pop1=log(pop); 
[a,b]=polyfit(year,pop1,1)
scatter(year*10+1790,pop,'red','filled');
hold on;
p0=exp(a(2));
pred=p0*exp(a(1)*year);
plot(year*10+1790,pred,'LineWidth',2);
xlabel('year');
ylabel('population');
title('1790-1900');