t = linspace(-10,10,100000);
x1 = cos(10*t-(pi/3));
figure;
plot(t,x1,'r');
axis([-10 10 -10 10])
x2 = 2*sin(10*t+(pi/4));
hold on
plot(t,x2,'b');