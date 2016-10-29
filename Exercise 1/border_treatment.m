function output_image = border_treatment(img, border_treatment_type)

[imsizeX, imsizeY] = size(img);

if strcmp(border_treatment_type, 'border')
    x = zeros(imsizeX+20,imsizeY+20, 3);
    output_image = img;
end
if strcmp(border_treatment_type, 'mirror')
    output_image = img;
end

end

