first_image = imread('2.png');
disp(size(first_image));
first_lbp = lbp(first_image);
%figure;
%barplot(first_lbp);

second_image = imread('2_r.png');
second_image = second_image(1:475, 1:635, :);
disp(size(second_image));
second_lbp = lbp(second_image);
%figure;
%barplot(second_lbp);

x = first_lbp - second_lbp;