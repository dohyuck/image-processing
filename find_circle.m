rgb = imread('C:\���º���\014\Img_014_20191111_140102.jpg');
imshow(rgb)

% d = imdistline;
% delete(d)

% gray_image = rgb2gray(rgb);
% imshow(gray_image)


% [centers,radii] = imfindcircles(rgb,[15 30],'ObjectPolarity','dark', ...
%     'Sensitivity',0.9);
% 
% length(centers)

% delete(h)  % Delete previously drawn circles
% h = viscircles(centers,radii);

[centers,radii] = imfindellipse(rgb,[20 40],'ObjectPolarity','bright', ...
          'Sensitivity',0.9,'Method','twostage');

delete(h)
h = viscircles(centers,radii);