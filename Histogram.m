I = imread('brain2.jpg');
I_masked = InnerBrainMask(I);
if size(I_masked,3)==3
    I_masked = rgb2gray(I_masked);
end
imshow(I_masked), title('Enhanced MRI Image');

figure;
imhist(I_masked);
title('Histogram of Enhanced MRI Image');
xlabel('Intensity Value');
ylabel('Pixel Count');