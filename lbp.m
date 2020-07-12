I = imread('2.png');
I = rgb2gray(I);

I2 = I;

row = size(I2,1);
col = size(I2,2);

%[row col] = size(I2);
I3 = zeros(row, col);
LBP = zeros(row, col);

for i = 2 : row-1
    for j = 2 : col-1
        c = I2(i, j);
        I3(i-1, j-1) = I2(i-1, j-1) > c;
        I3(i-1, j) = I2(i-1, j) > c;
        I3(i-1, j+1) = I2(i-1, j+1) > c; 
        I3(i, j+1) = I2(i, j+1) > c;
        
        I3(i+1, j+1) = I2(i+1, j+1) > c;
        
        I3(i+1, j) = I2(i+1, j)>c; 
        I3(i+1,j-1) = I2(i+1, j-1)>c; 
        I3(i, j-1) = I2(i, j-1)>c;
        LBP(i, j) = I3(i-1, j-1) *2^7 + I3(i-1, j) * 2^6 + I3(i-1, j+1) * 2^5 + I3(i, j+1) * 2^4 + I3(i+1, j+1) * 2^3 + I3(i+1, j) * 2^2 + I3(i+1, j-1) * 2^1 + I3(i, j-1) * 2^0;
        %disp(i);
        %disp(j);
        
    end
end
imshow(LBP);
%figure;
%imhist(LBP);