img1 = imread("brain1.jpg");
img2 = imread("brain2.jpg");
img3 = imread("brain3.jpg");

h_img1 = highlightTumor(img1);
h_img2 = highlightTumor(img2);
h_img3 = highlightTumor(img3);

figure;
subplot(3,2,1), imshow(img1), title('Original MRI 1');
subplot(3,2,2), imshow(h_img1), title('Tumor 1');
subplot(3,2,3), imshow(img2), title('Original MRI 2');
subplot(3,2,4), imshow(h_img2), title('Tumor 2');
subplot(3,2,5), imshow(img3), title('Original MRI 3');
subplot(3,2,6), imshow(h_img3), title('Tumor 3');