//color image histogram manipulations
//Save the function required for this program in same location
clc
clear()
xdel(winsid())
a=imread('Cpath to kids image');
figure
imshow(a)
title('Input color image','fontsize',4);
exec('path to the corresponding function name as “hist_eq.sce” '); // execution access to the
function in this program
//Applying Histogram Equalization for individual layer
for i=1:3
 [p]=hist_eq(a(:,:,i));
 b(:,:,i)=uint8(p);

end
figure
imshow(b)
title('Histogram Equalised image - Output','fontsize',4);
