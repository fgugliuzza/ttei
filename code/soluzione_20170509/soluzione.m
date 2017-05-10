im_corrotta = im2double(imread('20170509.png'));
im_orig = im2double(imread('cameraman.tif'));

[psnr1, mse1] = measerr(im_orig, im_corrotta)

patch = imcrop(im_corrotta);
figure; imhist(patch);
noise_var = var(patch(:))
im_var = var(im_corrotta(:));

h = fspecial('motion', 11, 0);

nsr = noise_var/im_var;
im_restaurata = deconvwnr(im_corrotta, h, nsr);

[psnr2, mse2] = measerr(im_orig, im_restaurata)

% Dato che le misure di qualità sono inferiori rispetto a quelle iniziali,
% è possibile filtrare l'immagine con un filtro in grado di attenuare il
% rumore gaussiano (es: media aritmetica, geometrica, armonica, midpoint,
% alpha-trimmed, media adattiva). Il calcolo delle metriche va ripetuto ad
% ogni prova.