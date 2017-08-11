%ex6_5_2高斯低通滤波
I=imread('gaus.bmp');

%生成滤镜
ff=imgaussflpf(I,100);
%应用滤镜
out=imfreqfilt(I,ff);

figure(1);
subplot(2,2,1);
imshow(I);
title('Source');

%计算FFT并显示
temp=fft2(I);
temp=fftshift(temp);
temp=log(1+abs(temp));
figure(2);
subplot(2,2,1);
imshow(temp,[]);
title('Source');

figure(1);
subplot(2,2,2);
imshow(out);
title('Gauss LPF,sigma=20');

%计算FFT并显示
temp=fft2(out);
temp=fftshift(temp);
temp=log(1+abs(temp));
figure(2);
subplot(2,2,2);
imshow(temp,[]);
title('Gauss LPF,sigma=20');
% %理想低通滤波
% %生成滤镜
% ff=imidealflpf(I,40);
% %应用滤镜
% out=imfreqfilt(I,ff);
% 
% figure(3);
% subplot(2,2,1);
% imshow(I);
% title('Source');
% 
% %计算FFT并显示
% temp=fft2(I);
% temp=fftshift(temp);
% temp=log(1+abs(temp));
% figure(4);
% subplot(2,2,1);
% imshow(temp,[]);
% title('Source');
% 
% figure(3);
% subplot(2,2,2);
% imshow(out);
% title('Ideal LPF,freq=20');
% 
% %计算FFT并显示
% temp=fft2(out);
% temp=fftshift(temp);
% temp=log(1+abs(temp));%对幅值做对数变换以压缩动态范围
% figure(4);
% subplot(2,2,2);
% imshow(temp,[]);
% title('Ideal LPF,freq=20');