%ex6_1������
I1=imread('cell.tif');

fcoef=fft2(I1);%��fft�任
spectrum=fftshift(fcoef);%������Ƶ�����
temp=log(1+abs(spectrum));%�Է�ֵ�������任��ѹ����̬��Χ

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