img = imread("scram_py.png")
x1 = double(img(:,1:end-1));
y1 = double(img(:,2:end));
randIndex1 = randperm(numel(x1));
randIndex1 = randIndex1(1:3000);
x = x1(randIndex1);
y = y1(randIndex1);
r_xy = corrcoef(x,y);
scatter(x,y);
xlabel('Pixel gray value on location (x,y)')
ylabel('Pixel gray value on location (x+1,y)')