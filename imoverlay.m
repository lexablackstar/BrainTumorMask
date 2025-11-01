function out = imoverlay(img, mask, color)
    if size(img,3)==1
        img = repmat(mat2gray(img),[1 1 3]);
    end
    out = img;
    color = reshape(color,1,1,3);
    for c = 1:3
        out(:,:,c) = img(:,:,c).*(~mask) + color(c)*mask;
    end
end