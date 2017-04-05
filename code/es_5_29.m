function es_5_29(im, transformation_name, sz)
[rows cols] = size(im);
if strcmp(transformation_name, 'zooming')
    imout1 = imresize(im, sz, 'nearest');
    imout2 = imresize(im, sz, 'bilinear');
    
    subplot(1, 2, 1);
    imshow(imout1);
    subplot(1, 2, 2);
    imshow(imout2);
elseif strcmp(transformation_name, 'shrinking')
    imout = imresize(im, sz);
    imshow(imout);
end