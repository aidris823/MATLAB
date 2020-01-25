x = linspace(-2,2,101);
f = x.*x;
figure;
plot(x,f,'k');
xlabel('{\it x}')
ylabel('{\it f}')
title('Visualize {\it f}={\it x}^2')
axis([-2.5 2.5 -1 5])

