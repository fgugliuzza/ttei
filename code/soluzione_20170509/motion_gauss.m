cameraman = im2double(imread('cameraman.tif'));
h = fspecial('motion', 11, 0);
cameraman_motion = imfilter(cameraman, h, 'conv', 'circular');
cameraman_motion_gauss = imnoise(cameraman_motion, 'gaussian', 0, 0.001);