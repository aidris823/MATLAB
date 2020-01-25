Nx = 101; %No. x coors
Ny = Nx; %Mo. y coors


x = linspace(-2,2,Nx);
y = linspace(-2,2,Ny);

[XX,YY] = meshgrid(x,y);

h = XX.^2 + YY.^2
figure(1)
surf(x,y,h);
figure(2)
imagesc(x,y,h);
figure(3)
contourf(x,y,h)




