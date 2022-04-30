clc;
clear();
xdel(winsid());
a=imread('D:\sip lab\special effects on image\mandrilla.png');
figure;
imshow(a);
title('Mandrill Image - Input','fontsize',4);
b=imread('D:\sip lab\special effects on image\zebra.jpg');
figure;
imshow(b);
title('Twozebras Image - Input','fontsize',4);
c=imread('D:\sip lab\special effects on image\cameraman.jpg');
figure;
imshow(c);
title('Cameraman Image - Input','fontsize',4);
//Applying Sobel filter
fi=fspecial('sobel');
a1=imfilter(a,fi);
b1=imfilter(b,fi);
c11=imfilter(c,fi);
figure;
imshow(a1);
title('Sobel filtering on mandrill image','fontsize',4);
figure;
imshow(b1);
title('Sobel filtering on Two zebras image','fontsize',4);
figure;
imshow(c11);
title('Sobel filtering on Cameraman image','fontsize',4);
//image negative
// for gray image
[m,n]=size(c);
for i=1:m
 for j=1:n
 c1(i,j)=255-c(i,j);
 end
 
end
figure;
imshow(c1);
title('Image Negative of Gray image','fontsize',4);
//For color image
[p q r]=size(b);
for i=1:r
 for j=1:p
 for k=1:q
 b1(j,k,i)=255-b(j,k,i);
 end
 end
end
figure;
imshow(b1);
title('Image Negative of color image','fontsize',4);
//image thresholding
for i=1:m
 for j=1:n
 if c(i,j)<150
 c2(i,j)=0;
 else
 c2(i,j)=255;
 end
 end
end
figure;
imshow(c2);
title('Threshold image','fontsize',4);
//image rotation
//mirror image
for i=1:m
 for j=1:n
 c3(i,j)=c(i,n-j+1);
 end
end
figure;
imshow(c3);
title('Mirror Image','fontsize',4);
//clockwise rotation
for i=1:3
    c4(:,:,i)=c(:,:,i)';
end
c5=c4(:,n:-1:1);
figure;
imshow(c5);
title('Clockwise rotated image','fontsize',4);
//anticlock wise rotation
for i=1:3
end
c6=c(m:-1:1,:);
figure;
imshow(c6);
title('Anticlockwise rotated image','fontsize',4);
