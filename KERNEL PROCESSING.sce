clc
clear()
xdel(winsid())
a=imread('path to cktnoise image'); //SIVP toolbox
[m n]=size(a); //storing original image size m rows and n columns
a1=zeros(m+2,n+2) //new image a1 with all zeros and size m+2 rows and n+2 columns
for i=2:m+1 //creating a1 as original image but border with all zeros remains unchanged
 for j=2:n+1
 a1(i,j)=a(i-1,j-1)
 end
end
for i=2:m+1 //creating mask 3x3 and finding mean & median which stores in b and c
respectively
 for j=2:n+1
 mask=a1((i-1):(i+1),(j-1):(j+1));
 b(i-1,j-1)=mean(mask);
 c(i-1,j-1)=median(mask);
 end
end
figure
imshow(a)
title ('Noise image before enhancement','fontsize',4);
figure
imshow(uint8(b))
title ('Enhancement with Mean filtering','fontsize',4);
figure
imshow(uint8(c))
title('Enhancement with Median filtering','fontsize',4);
