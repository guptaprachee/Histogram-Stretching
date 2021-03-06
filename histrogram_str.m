image = imread('lena1.jpg');
% Low_High = stretchlim(I) returns Low_High, a two-element vector of pixel
%values that specify lower and upper limits that can be used for contrast 
%stretching image I. By default, values in Low_High specify the bottom 1% 
%and the top 1% of all pixel values. The gray values returned can be used
%by the imadjust function to increase the contrast of an image.

stretched_Image = imadjust(image, stretchlim(image, [0.05, 0.95]),[]);

subplot(2,2,1), imshow(image), title('Original Image');
subplot(2,2,2), imshow(stretched_Image), title('Strethced Image');
subplot(2,2,3), imhist(image), title('Histogram of Original Image');
subplot(2,2,4), imhist(stretched_Image), title('Histogram of Stretched Image');

%% 2nd method
 t=rgb2gray(imread('lena1.jpg'));
 imhist(t)
 th=imadjust(t,[],[],0.5); 
 figure
 imshow(t),figure,imshow(th) 
 plot(t,th,'.'),axis tight 
 imhist(th)
 
