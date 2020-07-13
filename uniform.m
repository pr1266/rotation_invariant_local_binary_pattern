function counter = uniform(I_values)

%% check kon nahayatan 2 ta transision dashte bashe :
%disp(size(I_values));
counter_ = 0;
%disp('counter');
%disp(counter_);
for i = 2: 8
    disp(i);
    disp('salam');
    disp(I_values(i));
    disp(I_values(i - 1));
    disp('x : ');
    x = I_values(1, i) - I_values(1, i - 1)
    disp(size(x));
    disp(x);
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