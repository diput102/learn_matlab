I=imread('pout.tif');
figure;
[M,N]=size(I);
[counts,x]=imhist(I,64);
counts=counts/M/N;
stem(x,counts);