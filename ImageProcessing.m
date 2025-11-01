I = imread('brain1.jpg');
I_original_gray = rgb2gray(I);
I_masked = InnerBrainMask(I);

I_gray = rgb2gray(I_masked);

tumorMask = I_gray > 80; 
tumorMask = imopen(tumorMask, strel('disk', 2));
tumorMask = imclose(tumorMask, strel('disk', 4));
tumorMask = imfill(tumorMask, 'holes');
tumorMask = bwareaopen(tumorMask, 50);
tumorMask = bwareafilt(tumorMask, 1);

highlighted = imoverlay(I_original_gray, tumorMask, [1 0 0]);

figure;
subplot(1,3,1), imshow(I_masked), title('Original MRI');
subplot(1,3,2), imshow(tumorMask), title('Tumor Mask (Inside Brain)');
subplot(1,3,3), imshow(highlighted), title('Tumor Highlighted in Red');