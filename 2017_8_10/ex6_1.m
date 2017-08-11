%ex6_1幅度谱
I1=imread('cell.tif');

fcoef=fft2(I1);%做fft变换
spectrum=fftshift(fcoef);%将零点移到中心
temp=log(1+abs(spectrum));%对幅值做对数变换以压缩动态范围

subplot(1,2,1);
imshow(temp,[]);
title('FFT');
subplot(1,2,2);
imshow(I1);
title('Source');

I2=imread('circuit.tif');

fcoef=fft2(I2);
spectrum=fftshift(fcoef);
temp=log(1+abs(spectrum));

figure;
subplot(1,2,1);
imshow(temp,[]);
title('FFT');
subplot(1,2,2);
imshow(I2);
title('Source');