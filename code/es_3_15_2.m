function es_3_15_2
x=0:0.01:100;
y1=exp(x);
y2=exp(2*x);
plot(x, y1);
axis([0 1000 0 10000]);
figure;
plot(x, y2);
axis([0 1000 0 10000]);