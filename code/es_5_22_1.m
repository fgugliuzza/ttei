function es_5_22_1(filename)
im = imread(filename);

filt1 = fspecial('average', [3 3]);
filt2 = fspecial('average', [5 5]);
filt3 = fspecial('average', [7 7]);

im_filt1 = imfilter(im, filt1);
im_filt2 = imfilter(im, filt2);
im_filt3 = imfilter(im, filt3);

subplot(1, 3, 1);
imshow(im_filt1);
subplot(1, 3, 2);
imshow(im_filt2);
subplot(1, 3, 3);
imshow(im_filt3);