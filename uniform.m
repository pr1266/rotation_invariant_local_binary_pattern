function counter = uniform(I_values)

%% check kon nahayatan 2 ta transision dashte bashe :
%disp(size(I_values));
counter_ = 0;
%disp('counter');
%disp(counter_);
for i = 2: 8
    
    x = I_values(1, i) - I_values(1, i - 1);
    if I_values(i) - I_values(i - 1) ~= 0
        counter_ = counter_ + 1;
    end 
end

%% inja ham avali va akhari ro check mikonim :
if I_values(size(I_values)) - I_values(1) ~= 0
    counter_ = counter_ + 1;
end

if counter_ > 2
    counter = -1;
else
    counter = sum(I_values ~= 0);
end

end