function LBP = lbp(I)

I = rgb2gray(I);
I2 = I;

row = size(I2, 1);
col = size(I2, 2);

I3 = zeros(row, col);

% 8 ta hamsaye ro check mikonim :
P = 8;

LBP = zeros(row, col);
UNI_LBP = zeros(P * (P - 1) + 2);
RI_LBP = zeros(P + 2);

uni_index = 1;
ri_index = 1;

for i = 2 : row-1
    for j = 2 : col-1
        
        % inja 8 ta hamsaye ro check mikonim :
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

        % uniform lbp : 
        I_values = [I3(i-1, j-1); I3(i-1, j); I3(i-1, j+1); I3(i, j+1); I3(i+1, j+1); I3(I+1, j); I3(i+1, j-1); I3(i, j-1)]
        if uniform(I_values) == 2
            UNI_LBP(uni_index) = I3(i-1, j-1) *2^7 + I3(i-1, j) * 2^6 + I3(i-1, j+1) * 2^5 + I3(i, j+1) * 2^4 + I3(i+1, j+1) * 2^3 + I3(i+1, j) * 2^2 + I3(i+1, j-1) * 2^1 + I3(i, j-1) * 2^0;
            uni_index = uni_index + 1;
            % rotation invariant
            RI_LBP(ri_index) = rotation_invariant(I_values);
            ri_index = ri_index + 1;
        end
        
    end
end

end