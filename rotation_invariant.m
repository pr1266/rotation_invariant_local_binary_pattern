function ri_lbp = rotation_invariant(I_values)

temp = zeros(size(I_values));
power = [1 2 4 8 16 32 64 128];
ri = zeros(size(I_values));
for i=1 : size(I_values)
   
    temp = I_values;
    last = I_values(size(I_values));
    I_values(2:size(I_values)) = I_values(1:size(I_values) - 1)
    I_values(1) = last;
    
    ri(i) = temp.' * power;
    
end

ri_lbp = min(ri);

end