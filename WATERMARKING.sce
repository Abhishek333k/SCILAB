clc
clear()
xdel(winsid())
a=imread('path to cameraman image')
b=imread(' path to wat image')
[m n]=size(a); //storing 1st image size m rows and n columns
[p q]=size(b); //storing 2nd image size p rows and q columns
// Note : 1) here two input images are same size ie.., m=p & n=q
// 2) Here Second image is Binary image ie.., L=2 & k=1
figure
imshow(a)
title('Cameraman input Gray image','fontsize',4)
figure
imshow(b)
title('Binary input image','fontsize',4)
//if image b is grey scale image then convert it into binary image using thresholding
//for i=1:p
// for j=1:q
// if b(i,j)<128
// then b(i,j)=0
// else
// then b(i,j)=1
// end
//end //this set of lines only applicable to jpeg or jpg or png where intensities are in integer
form,
//...........................................but here image b is in bmp form so we need to convert intensities
which are in Boolean into integer
for i=1:m //watermarking the image a with image b by placing b intensities into LSB(1)
and MSB(8) of a
 for j=1:n
 c(i,j)=bitset(a(i,j),1,uint8(b(i,j))) //setting bit at specified position
 d(i,j)=bitset(a(i,j),8,uint8(b(i,j)))
 end
end
figure
imshow(uint8(c))
title('Bitset image with position 1','fontsize',4)
figure
imshow(uint8(d))
title('Bitset image with position 8','fontsize',4)
for i=1:m // obtaining back the second input image with reference to bits of image b stored
in LSB and MSB of c & d
 for j=1:n
 e(i,j)=bitget(c(i,j),1) //getting bit at specified position
 f(i,j)=bitget(d(i,j),8)
end
end
errl=double((a-c)).^2
errm=double((a-d)).^2 //to know how much intensities changed or effected
sqerrl=sum(sum(errl));
sqerrm=sum(sum(errm));
MSEl=(sqerrl/(m*n));
MSEm=(sqerrm/(m*n));
zl=log10((255*255)/MSEl);
zm=log10((255*255)/MSEm);
PSNRl=(10*zl);
PSNRm=(10*zm);
g=corr2(b,e); //to see image b and extracted images are same or not
h=corr2(b,f);
disp('PSNR output : ',PSNRl);
disp('PSNR output : ',PSNRm);
disp('correlation output : ',g);
disp('conrrelation output : ',h)
figure
imshow(double(e))
title('Bitget image with position 1','fontsize',4)
figure
imshow(double(f))
title('Bitget image with position 8','fontsize',4)
