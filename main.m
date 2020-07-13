first_image = imread('2.png');
first_lbp = lbp(first_image);
second_image = imread('2_r.png');
second_image = second_image(1:475, 1:635, :);
second_lbp = lbp(second_image);
%x = first_lbp - second_lbp;