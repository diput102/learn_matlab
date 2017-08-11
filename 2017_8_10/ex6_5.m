%ex6_5_1理想低通滤波器
I=imread('gaus.bmp');

% I=im2double(I);
% figure;
% subplot(1,2,1),imshow(I,[]);
% subplot(1,2,2),imshow(I);

%生成滤镜
ff=imidealflpf(I,20);
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
title('Ideal LPF,freq=20');

%计算FFT并显示
temp=fft2(out);
temp=fftshift(temp);
temp=log(1+abs(temp));%对幅值做对数变换以压缩动态范围
figure(2);
subplot(2,2,2);
imshow(temp,[]);
title('Ideal LPF,freq=20');