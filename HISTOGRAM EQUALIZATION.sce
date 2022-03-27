clc;
clear();
xdel(winsid());
a=imread('path to Cameraman Image');
[m n]=size(a);
// Histogram of Input Image
for i=1:256
 b(i)=length(find(a==(i-1)));
end
//Applying Histogram Equalization
pb=b/(m*n)
cmpb(1)=pb(1);
for i=2:256
 cmpb(i)=pb(i)+cmpb(i-1)
end
 ni=(cmpb*255);
 new=uint8(round(ni))
for i=1:m
 for j=1:n
 ind=double(a(i,j));
 hea(i,j)=new(ind+1);
 end
end
figure
imshow(a)
title('Original image','fontsize',4)
figure
plot2d3(b);
title('Histogram of Original image','fontsize',4)
figure
imshow(uint8(hea));
title('Equalized image','fontsize',4)
for i=1:256
 c(i)=length(find(hea==i-1))
end
figure
plot2d3(c)
title('Histogram representation of Equalized Image','fontsize',4)
