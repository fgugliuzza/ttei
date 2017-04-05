A=ones(300, 100);
B=repmat(1:-1/99:0, 300, 1);
C=zeros(300, 100);
D=[A B C];
imshow(D);