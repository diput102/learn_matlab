I=imread('coins.png');

I=im2double(I);
[M,N]=size(I);

figure(1);
imshow(I);
title('原图像');

figure(2);
[H,x]=imhist(I,64);
stem(x,(H/M/N),'.');
title('原图像');

%增加对比度
Fa=2;Fb=-55;
O=Fa.*I+Fb/255;

figure(3);
subplot(2,2,1);
imshow(O);
title('Fa=2 Fb=-55 增加对比度');

figure(4);
subplot(2,2,1);
[H,x]=imhist(O,64);
stem(x,(H/M/N),'.');
title('Fa=2 Fb=-55 增加对比度');

%减小对比度
Fa=0.5;Fb=-55;
O=Fa.*I+Fb/255;

figure(3);
subplot(2,2,2);
imshow(O);
title('Fa=0.5 Fb=-55 减小对比度');

figure(4);
subplot(2,2,2);
[H,x]=imhist(O,64);
stem(x,(H/M/N),'.');
title('Fa=0.5 Fb=-55 减小对比度');

%线性增加亮度
Fa=1;Fb=55;
O=Fa.*I+Fb/255;

figure(3);
subplot(2,2,3);
imshow(O);
title('Fa=1 Fb=55 线性平移增加亮度');

figure(4);
subplot(2,2,3);
[H,x]=imhist(O,64);
stem(x,(H/M/N),'.');
title('Fa=1 Fb=55 线性平移增加亮度');

%反相显示
Fa=-1;Fb=255;
O=Fa.*I+Fb/255;

figure(3);
subplot(2,2,4);
imshow(O);
title('Fa=-1 Fb=255 反相显示');

figure(4);
subplot(2,2,4);
[H,x]=imhist(O,64);
stem(x,(H/M/N),'.');
title('Fa=-1 Fb=255 反相显示');


