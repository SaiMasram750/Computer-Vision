clc;
clear;
close all;
% Load and convert image
img = imread("C:\Users\saima\OneDrive\Pictures\20250427_bing.jpg");
img = im2double(img);
% Convert to grayscale
gray_img = rgb2gray(img);
% Negative transformation
neg_img = 1 - img;
% Logarithmic transformation
c = 1;
log_img = c * log(1 + img);
log_img = mat2gray(log_img); % Normalize for display
%power Image
gamma=0.9;
power_img=img.^gamma;
% Display all images in one figure
figure('Name','Original and Transformed Images','NumberTitle','off');
subplot(2,3,1);
imshow(img);
title('Original Image');
subplot(2,3,2);
imshow(gray_img);
title('Grayscale Image');
subplot(2,3,3);
imshow(neg_img);
title('Negative Image');
subplot(2,3,4);
imshow(log_img);
title('Logarithmic Transform');
subplot(2,3,5);
imshow(power_img);
title('Power Law Transform');