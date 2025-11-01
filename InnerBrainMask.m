function I_masked = InnerBrainMask(I)
    gray = im2gray(I);

    bw = imbinarize(gray, 'adaptive', 'Sensitivity', 0.5);
    bw = imfill(bw, 'holes');
    bw = bwareafilt(bw, 1);

    se = strel('disk', 35);  
    bw_eroded = imerode(bw, se);
    I_masked = I;

    if size(I_masked,3) == 1  % grayscale
        I_masked = repmat(I_masked, [1 1 3]); % convert to RGB
    end
    I_masked(repmat(~bw_eroded, [1 1 3])) = 0;

end
