clear all
close all
clc
a=10;
sec=round(rand(1,a));
sec=-2*sec+5;
sec=repmat(sec,100,1);
sec=reshape(sec,1,numel(sec));
stairs(sec)
grid on
axis([1 numel(sec) min(sec)-1 max(sec)+1])
t=0:1/100000:a/1000-1/100000;
port=cos(2*pi*1000*t).*sec;
figure
plot(t,port)
