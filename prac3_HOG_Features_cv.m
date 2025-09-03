
img = imread('D:/photo/ee.jpg');


if size(img, 3) == 3
    grayImg = rgb2gray(img);
else
    grayImg = img;
end


[hogFeatures, hogVisualization] = extractHOGFeatures(grayImg, ...
    'CellSize', [8 8], 'NumBins', 9);

figure;
subplot(1, 2, 1);
imshow(img);
title('Original Image');

subplot(1, 2, 2);
imshow(grayImg); % Use grayscale image for better contrast
hold on;
plot(hogVisualization); % Overlay HOG visualization on the image
title('HOG Features Visualization');

% Display the size of the extracted HOG feature vector
fprintf('Size of HOG feature vector: %d\n', numel(hogFeatures));
