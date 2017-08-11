%ex6_5_2��˹��ͨ�˲�
I=imread('gaus.bmp');

%�����˾�
ff=imgaussflpf(I,100);
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
title('Gauss LPF,sigma=20');

%����FFT����ʾ
temp=fft2(out);
temp=fftshift(temp);
temp=log(1+abs(temp));
figure(2);
subplot(2,2,2);
imshow(temp,[]);
title('Gauss LPF,sigma=20');
% %�����ͨ�˲�
% %�����˾�
% ff=imidealflpf(I,40);
% %Ӧ���˾�
% out=imfreqfilt(I,ff);
% 
% figure(3);
% subplot(2,2,1);
% imshow(I);
% title('Source');
% 
% %����FFT����ʾ
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
% %����FFT����ʾ
% temp=fft2(out);
% temp=fftshift(temp);
% temp=log(1+abs(temp));%�Է�ֵ�������任��ѹ����̬��Χ
% figure(4);
% subplot(2,2,2);
% imshow(temp,[]);
% title('Ideal LPF,freq=20');