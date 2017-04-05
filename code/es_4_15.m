I = imread('pout.tif');
imwrite(I, 'pout1.jpg', 'Quality', 10);
imwrite(I, 'pout2.jpg', 'Quality', 20);
imwrite(I, 'pout3.jpg', 'Quality', 50);
imwrite(I, 'pout4.jpg', 'Quality', 80);
imwrite(I, 'pout5.jpg', 'Quality', 100);