%C6S2.m
A=imread('cell.tif');
B=imread('cell.tif');
%求傅里叶变换
Af=fft2(A);
Bf=fft2(B);
%分别求幅度谱和相位谱
AfA=abs(Af);
AfB=angle(Af);

BfA=abs(Bf);
BfB=angle(Bf);
%交换相位谱并重建复数矩阵
AfR=AfA.*cos(BfB)+AfA.*sin(BfB).*1i;
BfR=BfA.*cos(AfB)+BfA.*sin(AfB).*1i;
%傅里叶反变换
AR=abs(ifft2(AfR));
BR=abs(ifft2(BfR));

subplot(2,2,1);
imshow(A);

subplot(2,2,2);
imshow(B);

subplot(2,2,3);
imshow(AR,[]);

subplot(2,2,4);
imshow(BR,[]);


