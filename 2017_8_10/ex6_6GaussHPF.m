%ex6_6GaussHPF
I=imread('coins.png');

%生成滤镜
ff=imgaussfhpf(I,20);
%应用滤镜
out=imfreqfilt(I,ff);

figure(1);
subplot(2,2,1),imshow(I);
title('Source');

%计算FFT并显示
temp=fft2(I);
temp=fftshift(temp);
temp=log(1+abs(temp));
figure(2);
subplot(2,2,1),imshow(temp,[]);
title('Source');

figure(1);
subplot(2,2,2),imshow(out);
title('Gauss HPF Sigma=20');

%计算FFT并显示
temp=fft2(out);
temp=fftshift(temp);
temp=log(1+abs(temp));
figure(2);
subplot(2,2,2),imshow(temp,[]);
title('Gauss HPF Sigma=20');