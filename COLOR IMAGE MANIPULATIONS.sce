//Color images manipulations, reading and writing of color images
clc
clear()
xdel(winsid())
a=imread('path to peppers image');
figure
imshow(a)
title('Input image','fontsize',4)
//Intensity variation in Red layer
figure
imshow(a(:,:,1))
title('Intensity variation in Red layer','fontsize',4)
//Intensity variation in Green layer
figure
imshow(a(:,:,2))
title('Intensity variation in Green layer','fontsize',4)
//Intensity variation in Blue layer
figure
imshow(a(:,:,3))
title('Intensity variation in Blue layer','fontsize',4)
//Representing image in Red color
b=a
b(:,:,2:3)=0
figure
imshow(b)
title('Representation of image in Red layer','fontsize',4)
//Representing image in Green color
c=a
c(:,:,1)=0
c(:,:,3)=0
figure
imshow(c)
title('Representation of image in Green layer','fontsize',4)
//Representing image in Blue color
d=a
d(:,:,1:2)=0
figure
imshow(d)
title('Representation of image in Blue layer','fontsize',4)
//Representation of image using combination of Green and Blue
e=a
e(:,:,1)=0
figure
imshow(e)
title('Representation of image using Green and Blue','fontsize',4)
//Representation of image using combination of Red and Blue
f=a
f(:,:,2)=0
figure
imshow(f)
title('Representation of image using Red and Blue','fontsize',4)
//Representation of image using combination of Red and Green
g=a
g(:,:,3)=0
figure
imshow(g)
title('Representation of image using Red and Green','fontsize',4)
//conversions
c1=rgb2hsv(a)
figure
imshow(c1)
title('rgb2hsv converted image','fontsize',4)
c2=rgb2gray(a)
figure
imshow(c2)
title('rgb2gray converted image','fontsize',4)
c3=rgb2ntsc(a)
figure
imshow(c3);
title('rgb2ntsc converted image','fontsize',4)
c4=rgb2ycbcr(a)
figure
imshow(c4);
title('rgb2ycbcr converted image','fontsize',4)
c5=rgb2ind(a)
figure
imshow(c5);
title('rgb2ind converted image','fontsize',4)
