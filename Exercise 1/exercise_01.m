% Parameters
mask = [1/9 1/9 1/9;1/9 1/9 1/9;1/9 1/9 1/9];
img = imread('lena.gif');
% border_treatment = 'mirror';
border_treatment = 'border';

% Call function
output_image = convolution(img, mask, border_treatment);
imshow(output_image, []);

output_image2 = conv2(double(img), mask);
imshow(output_image2, []);