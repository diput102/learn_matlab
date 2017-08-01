I=imread('pout.tif');
figure;
imshow(I);
title('Source');
figure;
imhist(I,1024);
title('Graph');
figure,imhist(I);
