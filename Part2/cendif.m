clear;clc;
pop=[3.9, 5.3, 7.2, 9.6, 12.9, 17.1, 23.2, 31.4, 38.6, 50.2, 62.9, 76.0, ...
   92.0, 106.5, 123.2, 131.7, 150.7, 179.3, 204.0, 226.5, 251.4, 281.4];%population
year=0:length(pop)-1;
m=length(year);
cendpop=zeros(m,1);
cendpop(1)=(pop(2)-pop(1))/1;
for i=2:m-1
    cendpop(i)=(pop(i+1)-pop(i-1))/2;
end    
cendpop(m)=(pop(m)-pop(m-1))/1;
[a,b]=polyfit(pop,cendpop'./pop,1)
p8=-a(2)/a(1);
r=a(2);
p0=3.9;
scatter(year*10+1790,pop,'red','filled');
hold on;
pred=p8./(1+(p8/p0-1)*exp(-r*year));
plot(year*10+1790,pred,'LineWidth',2);
xlabel('population');
ylabel('year');
title('1790-2000');
pred1=p8./(1+(p8/p0-1)*exp(-r*21))
