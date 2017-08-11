%ex6_5_1�����ͨ�˲���
I=imread('gaus.bmp');

% I=im2double(I);
% figure;
% subplot(1,2,1),imshow(I,[]);
% subplot(1,2,2),imshow(I);

%�����˾�
ff=imidealflpf(I,20);
%Ӧ���˾�
out=imfreqfilt(I,ff);

figure(1);
subplot(2,2,1);
imshow(I);
title('Source');

%����FFT����ʾ
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

%����FFT����ʾ
temp=fft2(out);
temp=fftshift(temp);
temp=log(1+abs(temp));%�Է�ֵ�������任��ѹ����̬��Χ
figure(2);
subplot(2,2,2);
imshow(temp,[]);
title('Ideal LPF,freq=20');