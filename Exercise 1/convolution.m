function output_image = convolution(img, mask, border_treatment_type)
% The standard convolution operation

% image = rgb2gray(image);
img = double(img);

% output_image = border_treatment(image, border_treatment_type);

output_image = img; % Make copy of image

[rows, cols] = size(img);
[M, N] = size(mask);

for i=1:rows-M
	for j=1:cols-N
        selected_area = img(i:(i+M)-1, j:(j+N)-1);
        convolved_area = selected_area .* mask;
        convolution_result = sum(convolved_area(:));
        output_image(i+fix(M/2), j+fix(N/2)) = convolution_result;
	end
end

end

