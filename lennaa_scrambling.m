clc;
clear all;
close all;
A = imread('lena_gray.gif');
imshow(A)
N=512;
%T=1.4938*N+40.8689;
%disp(T);
t=0;
T2=3;
%T2=ceil(T);
%disp(T2);
%c=[T];
iscram=A;
while t<T2
    for i=[1:N]
        for j=[1:N]
            iscram(i,j)=iscram(mod(i+j,N)+1,mod(i+(2*j),N)+1);
        end
    end
    t=t+1;
end
     figure,imshow(iscram)