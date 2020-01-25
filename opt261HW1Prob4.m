%4A

%r1
figure(1)
x1 = linspace(0,2,10);
y1 = linspace(0,3,10);
plot(x1,y1); %Plotting r1
hold on 

%Cartesian Plane
xline(0);
yline(0);

%r2
x2 = linspace(0,-1,10);
y2 = linspace(0,4,10);
plot(x2,y2); %Plotting r2

%Calculating and plotting r1+r2
x3 = x1+x2;
y3 = y1+y2;
plot(x3,y3);

%Calculating and plotting r1-r2
x4 = x2-x1;
y4 = y2-y1;
plot(x4,y4);

axis([-10 10 -10 10])

figure(2)
x3d = linspace(-10,10,100);
y3d = linspace(-10,10,100);
[XX,YY] = meshgrid(x3d,y3d);
z1 = (-2/3*XX) + (1/3*YY) + (2/3);
surf(x3d,y3d,z1); %Plotting 4C
hold on;
z2 = (-2/3*XX) + (1/3*YY) + 1;
surf(x3d,y3d,z2);

figure(3)







