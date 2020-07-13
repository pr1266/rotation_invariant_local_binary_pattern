function counter = uniform(I_values)

%% check kon nahayatan 2 ta transision dashte bashe :

counter_ = 0;
for i = 2: size(I_values)
    if I_values(i) - I_values(i - 1) ~= 0
        counter_ = counter_ + 1;
    end 
end

%% inja ham avali va akhari ro check mikonim :
if I_values(size(I_values)) - I_values(1) ~= 0
    counter_ = counter_ + 1;
end
    
counter = counter_;
    
end