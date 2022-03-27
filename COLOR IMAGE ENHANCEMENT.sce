//Color image enhancement
//Save the function required for this program in same location
clc
clear()
xdel(winsid())
a=imread('path to balloonsnoisy image');
figure
imshow(a)
title('Input color noisy image','fontsize',4)
exec('path to the corresponding function name as “imageenh.sce” '); // execution access to
the function in this program
//Applying Image Enhancement for individual layer
for i=1:3
 [p,q]=imageenh(a(:,:,i));
 b(:,:,i)=uint8(p);
 c(:,:,i)=uint8(q);

end
figure
imshow(b)
title('Output image - Mean','fontsize',4)
figure
imshow(c)
title('Output image image - Median','fontsize',4)
