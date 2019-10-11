clear;clc;
pop=[3.9, 5.3, 7.2, 9.6, 12.9, 17.1, 23.2, 31.4, 38.6, 50.2, 62.9, 76.0, ...
   92.0, 106.5, 123.2, 131.7, 150.7, 179.3, 204.0, 226.5, 251.4, 281.4];%population
%pop=pop(1:12);%when using 1790-2000, omit this line
year=0:length(pop)-1;
%P(t)=3.9exp(rT) was changed to linear form: log(P(t))=log3.9+rT
pop1=log(pop); 
inum=50; %iteration_number
%learning rate
lr=0.008;%when 1790-1900, lr=0.001; 1790-2000, lr=0.008
lr1=0.0008; %when 1790-1900, lr1=0.3; 1790-2000, lr1=0.0008 
r=0.25; %initialize
lp0=1.7992;
m=length(pop);
loss1=double(zeros(inum,1));
scatter(year*10+1790,pop,'red','filled');
hold on;
for i=1:inum
    sum=double(0); %sum of square error
    sum1=double(0); %sum of gradient
    sum2=double(0);
    for j=1:m
        sum=sum+(lp0+r*year(j)-pop1(j))^2;
        sum1=sum1+year(j)*(lp0+r*year(j)-pop1(j));
        sum2=sum2+lp0+r*year(j)-pop1(j);
    end    
    sum1;
    loss1(i)=sum/(2*m);
    r=r-lr/m*sum1;
    lp0=lp0-lr1/m*sum2;
end    
p0=exp(lp0);
pred=exp(lp0)*exp(r*year);
plot(year*10+1790,pred,'LineWidth',2);
xlabel('population');
ylabel('year');
title('1790-1900');
