clear;clc;
pop=[3.9, 5.3, 7.2, 9.6, 12.9, 17.1, 23.2, 31.4, 38.6, 50.2, 62.9, 76.0, ...
   92.0, 106.5, 123.2, 131.7, 150.7, 179.3, 204.0, 226.5, 251.4, 281.4];%population
year=0:length(pop)-1;
x0=[335.2095,3.9,0.2886];%initial
F=@(x,xdata)x(1)./(1+(x(1)/3.9-1)*exp(-x(2)*xdata)); %x(1)=pm; x(2)=r;
[x,resnorm] = lsqcurvefit(F,x0,year',pop')
scatter(year*10+1790,pop,'red','filled');
hold on;
pred=x(1)./(1+(x(1)/3.9-1)*exp(-x(2)*year));
plot(year*10+1790,pred,'LineWidth',2);
xlabel('population');
ylabel('year');
title('1790-2000');
pred1=x(1)/(1+(x(1)/3.9-1)*exp(-x(2)*21))
