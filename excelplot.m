[BBFilename BBText] = uigetfile('*.xlsx'); % Opens up
...a window and allows you to select a file
[BBD BBT]= xlsread([BBText BBFilename]) % Reads the
...file you selected

x = linspace(1,1601,1601);
for i = 2:11
    x(i) = BBD(i)
end
plot(i,x);

    