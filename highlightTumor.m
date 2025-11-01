function highlighted = highlightTumor(I)
    I_original_gray = im2gray(I); 
    I_masked = InnerBrainMask(I);
    I_gray = im2gray(I_masked);
    
    % Tumor segmentation
    tumorMask = I_gray > 80; 
    tumorMask = imopen(tumorMask, strel('disk', 2));
    tumorMask = imclose(tumorMask, strel('disk', 4));
    tumorMask = imfill(tumorMask, 'holes');
    tumorMask = bwareaopen(tumorMask, 50);
    tumorMask = bwareafilt(tumorMask, 1);
    
    % Highlight tumor in red
    highlighted = imoverlay(I_original_gray, tumorMask, [1 0 0]);

end
