clc 
clear all
close all
im1 = imread("lenna_orig.png");
r22g = rgb2gray(im1);
im1_3 = imresize(r22g,[512,512]);
im2 = imread("scr_itr15_mat.png");
r2g = rgb2gray(im2);
im2_3 = imresize(r2g,[512,512]);
corr2(im1_3,im2_3)
msee = immse(im1_3,im2_3)
peaksnr = psnr(im1_3,im2_3)
